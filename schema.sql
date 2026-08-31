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
