create extension if not exists pgcrypto;

create table if not exists public.denuncias (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  nome text,
  contato text,
  cidade text,
  tipo text not null,
  mensagem text not null,
  device_type text not null check (device_type in ('celular','tablet','desktop','desconhecido')),
  ip_truncado inet,
  consent_at timestamptz not null,
  attachment_url text,
  status text not null default 'nova' check (status in ('nova','em_analise','encerrada','arquivada'))
);

alter table public.denuncias enable row level security;

create policy "authenticated members can read reports"
  on public.denuncias for select to authenticated using (true);

create policy "authenticated members can update report status"
  on public.denuncias for update to authenticated using (true) with check (true);

revoke all on public.denuncias from anon;
grant insert on public.denuncias to service_role;
grant select, update on public.denuncias to authenticated;

create index if not exists denuncias_created_at_idx on public.denuncias (created_at desc);
create index if not exists denuncias_tipo_idx on public.denuncias (tipo);
create index if not exists denuncias_status_idx on public.denuncias (status);

comment on column public.denuncias.ip_truncado is 'IP truncado no servidor: IPv4 /24 ou IPv6 /64; nunca armazenar o IP completo.';
comment on column public.denuncias.cidade is 'Cidade informada voluntariamente pelo denunciante; não é geolocalização exata.';


create table if not exists public.members (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz not null default now(),
  name text not null,
  role text not null default 'Membro',
  color text default '#c084fc',
  code text default '//member',
  motto text default '',
  description text default '',
  photo_url text,
  display_order integer not null default 100,
  active boolean not null default true
);

alter table public.members enable row level security;
drop policy if exists "public can read active members" on public.members;
create policy "public can read active members" on public.members for select to anon, authenticated using (active = true);
drop policy if exists "authenticated members can manage members" on public.members;
create policy "authenticated members can manage members" on public.members for all to authenticated using (true) with check (true);
grant select on public.members to anon, authenticated;
grant insert, update, delete on public.members to authenticated;

insert into public.members (name, role, color, code, motto, description, display_order)
select * from (values
  ('NK','DRC','#f5f5f5','//directive','A decisão final começa comigo.','Direção estratégica da Eternity.',1),
  ('Newox','Dono','#ff3b30','//origin','A visão transforma o caos em estratégia.','Fundador da Eternity e arquiteto das operações.',2),
  ('Juiza Unica','Membro','#f97316','//juris','A justiça encontra o caminho.','Membro da Eternity. Atua na análise de casos.',3)
) as v(name,role,color,code,motto,description,display_order)
where not exists (select 1 from public.members);

insert into storage.buckets (id, name, public) values ('member-photos','member-photos',true) on conflict (id) do update set public=true;
drop policy if exists "authenticated can upload member photos" on storage.objects;
create policy "authenticated can upload member photos" on storage.objects for insert to authenticated with check (bucket_id = 'member-photos');
drop policy if exists "authenticated can update member photos" on storage.objects;
create policy "authenticated can update member photos" on storage.objects for update to authenticated using (bucket_id = 'member-photos');
drop policy if exists "public can read member photos" on storage.objects;
create policy "public can read member photos" on storage.objects for select to public using (bucket_id = 'member-photos');


-- Anexos opcionais das denúncias (imagens públicas apenas por URL aleatória)
alter table public.denuncias add column if not exists attachment_url text;
insert into storage.buckets (id, name, public, file_size_limit, allowed_mime_types)
values ('report-attachments','report-attachments',true,5242880,array['image/jpeg','image/png','image/webp','image/gif'])
on conflict (id) do update set public=true, file_size_limit=5242880, allowed_mime_types=array['image/jpeg','image/png','image/webp','image/gif'];
drop policy if exists "public can upload report attachments" on storage.objects;
create policy "public can upload report attachments" on storage.objects for insert to anon, authenticated with check (bucket_id = 'report-attachments');
drop policy if exists "public can read report attachments" on storage.objects;
create policy "public can read report attachments" on storage.objects for select to public using (bucket_id = 'report-attachments');


-- Perfis administrativos: somente o proprietário pode gerenciar acessos via Edge Function.
create table if not exists public.admin_profiles (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null unique,
  email text not null unique,
  name text not null,
  role text not null default 'Administrador',
  active boolean not null default true,
  last_access timestamptz,
  created_at timestamptz not null default now()
);
alter table public.admin_profiles enable row level security;
drop policy if exists "admins can read own profile" on public.admin_profiles;
create policy "admins can read own profile" on public.admin_profiles for select to authenticated using (user_id = auth.uid());
revoke all on public.admin_profiles from anon;
grant select on public.admin_profiles to authenticated;
insert into public.admin_profiles (user_id,email,name,role,active)
select id,'limaoliveira825@gmail.com','Proprietário Eternity','Proprietário',true from auth.users
where lower(email)=lower('limaoliveira825@gmail.com')
on conflict (user_id) do update set email=excluded.email,name=excluded.name,role=excluded.role,active=true;


-- Hardening pós-incidente: somente admins ativos podem alterar dados administrativos.
DROP POLICY IF EXISTS "authenticated members can manage members" ON public.members;
DROP POLICY IF EXISTS "authenticated manage members" ON public.members;
DROP POLICY IF EXISTS "admins manage members" ON public.members;
CREATE POLICY "admins manage members" ON public.members FOR ALL TO authenticated
  USING (EXISTS (SELECT 1 FROM public.admin_profiles p WHERE p.user_id = auth.uid() AND p.active = true))
  WITH CHECK (EXISTS (SELECT 1 FROM public.admin_profiles p WHERE p.user_id = auth.uid() AND p.active = true));

DROP POLICY IF EXISTS "authenticated members can read reports" ON public.denuncias;
DROP POLICY IF EXISTS "authenticated members can update report status" ON public.denuncias;
CREATE POLICY "active admins can read reports" ON public.denuncias FOR SELECT TO authenticated
  USING (EXISTS (SELECT 1 FROM public.admin_profiles p WHERE p.user_id = auth.uid() AND p.active = true));
CREATE POLICY "active admins can update report status" ON public.denuncias FOR UPDATE TO authenticated
  USING (EXISTS (SELECT 1 FROM public.admin_profiles p WHERE p.user_id = auth.uid() AND p.active = true))
  WITH CHECK (EXISTS (SELECT 1 FROM public.admin_profiles p WHERE p.user_id = auth.uid() AND p.active = true));

DROP POLICY IF EXISTS "authenticated can upload member photos" ON storage.objects;
DROP POLICY IF EXISTS "authenticated can update member photos" ON storage.objects;
CREATE POLICY "active admins can upload member photos" ON storage.objects FOR INSERT TO authenticated
  WITH CHECK (bucket_id = 'member-photos' AND EXISTS (SELECT 1 FROM public.admin_profiles p WHERE p.user_id = auth.uid() AND p.active = true));
CREATE POLICY "active admins can update member photos" ON storage.objects FOR UPDATE TO authenticated
  USING (bucket_id = 'member-photos' AND EXISTS (SELECT 1 FROM public.admin_profiles p WHERE p.user_id = auth.uid() AND p.active = true));

CREATE TABLE IF NOT EXISTS public.security_audit_log (
  id uuid PRIMARY KEY DEFAULT gen_random_uuid(),
  created_at timestamptz NOT NULL DEFAULT now(),
  actor_user_id uuid,
  actor_email text,
  action text NOT NULL,
  table_name text NOT NULL,
  record_id text,
  ip_truncated inet,
  metadata jsonb NOT NULL DEFAULT '{}'::jsonb
);
ALTER TABLE public.security_audit_log ENABLE ROW LEVEL SECURITY;
REVOKE ALL ON public.security_audit_log FROM anon;
REVOKE ALL ON public.security_audit_log FROM authenticated;
GRANT SELECT ON public.security_audit_log TO authenticated;
DROP POLICY IF EXISTS "active admins can read audit log" ON public.security_audit_log;
CREATE POLICY "active admins can read audit log" ON public.security_audit_log FOR SELECT TO authenticated
  USING (EXISTS (SELECT 1 FROM public.admin_profiles p WHERE p.user_id = auth.uid() AND p.active = true));
CREATE INDEX IF NOT EXISTS security_audit_log_created_at_idx ON public.security_audit_log (created_at DESC);
CREATE INDEX IF NOT EXISTS security_audit_log_action_idx ON public.security_audit_log (action);
COMMENT ON COLUMN public.security_audit_log.ip_truncated IS 'IP anonimizado no servidor: IPv4 /24 ou IPv6 /64; nunca armazenar IP completo.';

-- Anexos múltiplos de denúncias: uma linha por foto.
alter table public.denuncias add column if not exists attachment_urls jsonb not null default '[]'::jsonb;
create table if not exists public.denuncia_anexos (
  id uuid primary key default gen_random_uuid(),
  denuncia_id uuid not null references public.denuncias(id) on delete cascade,
  storage_path text not null,
  public_url text not null,
  mime_type text not null check (mime_type in ('image/jpeg','image/png','image/webp','image/gif')),
  size_bytes integer not null check (size_bytes > 0 and size_bytes <= 5242880),
  display_order integer not null default 0 check (display_order between 0 and 7),
  created_at timestamptz not null default now()
);
create index if not exists denuncia_anexos_denuncia_idx on public.denuncia_anexos (denuncia_id, display_order);
alter table public.denuncia_anexos enable row level security;
revoke all on public.denuncia_anexos from anon;
revoke all on public.denuncia_anexos from authenticated;
grant select on public.denuncia_anexos to authenticated;
drop policy if exists "active admins can read report attachments metadata" on public.denuncia_anexos;
create policy "active admins can read report attachments metadata" on public.denuncia_anexos for select to authenticated
  using (exists (select 1 from public.admin_profiles p where p.user_id = auth.uid() and p.active = true));
grant insert on public.denuncia_anexos to service_role;
comment on column public.denuncias.attachment_urls is 'Array JSON de URLs públicas das fotos; até 8 itens. Mantido junto de attachment_url por compatibilidade.';



-- Redes sociais públicas opcionais dos membros.
alter table public.members add column if not exists discord_handle text;
alter table public.members add column if not exists instagram_handle text;
