# Configuração rápida do banco de denúncias

A página agora envia denúncias para uma Edge Function do Supabase, em vez de abrir o Gmail. O fluxo registra o relato, tipo, cidade informada voluntariamente, categoria do dispositivo e um IP truncado no servidor. O painel `admin.html` exige login de usuário autorizado do Supabase.

## 1. Criar o banco

No SQL Editor do Supabase, execute `supabase/schema.sql` (o arquivo canônico; `schema.sql` na raiz é mantido como cópia). Esse script também cria a tabela `members`, insere Juiza Unica em terceiro lugar e cria o bucket `member-photos` para fotos.

## 2. Publicar a função

Com a Supabase CLI instalada e autenticada:

```bash
supabase functions deploy hyper-api --no-verify-jwt
```

A função usa automaticamente `SUPABASE_URL` e `SUPABASE_SERVICE_ROLE_KEY` no ambiente gerenciado do Supabase. A service role key fica somente no servidor; nunca coloque essa chave no HTML.

## 3. Preencher as URLs públicas

Em `index.html`, substitua `https://zyreuptfiqzyqulpeisz.supabase.co/functions/v1/hyper-api` pela URL real da função.

Em `admin.html`, substitua `https://zyreuptfiqzyqulpeisz.supabase.co` e `SUA_ANON_KEY` pelos dados públicos do projeto. A anon key pode ficar no front-end porque o acesso é protegido por RLS e autenticação.

## 4. Criar os administradores

No Supabase Authentication, crie somente os usuários autorizados a ver denúncias. Somente usuários presentes em `admin_profiles` com `active=true` podem acessar o painel; o cliente não recebe grants de CRUD administrativo.

## 5. Publicar no GitHub Pages

Envie `index.html`, `admin.html`, `CNAME` e a pasta `supabase/` para o repositório. O painel fica disponível em `/admin.html`.

## 6. Gerenciar membros

Depois de executar o schema, entre em `/admin.html` com um usuário autenticado e abra a aba **Membros**. É possível criar, editar, excluir, ordenar, ocultar e reativar perfis. Para uma foto, selecione um arquivo no formulário; o painel envia a imagem ao bucket `member-photos` usando a sessão de um administrador ativo e salva a URL pública no perfil. A página pública lê os perfis ativos da tabela e mantém os perfis estáticos como fallback durante indisponibilidade do banco.

## Segurança de storage

O bucket `report-attachments` não aceita upload anônimo. O site solicita uma URL de upload temporária à Edge Function depois de validar o captcha; o token expira e o cliente nunca recebe `service_role`. O bucket `member-photos` aceita gravação somente para administradores ativos.

## Privacidade

O formulário mostra aviso e exige consentimento. O IP não é armazenado integralmente: IPv4 é reduzido a `/24` e IPv6 a `/64`. A cidade deve ser informada voluntariamente, e o tipo de dispositivo é apenas uma categoria técnica. Defina no Supabase uma política de retenção e apague registros quando não forem mais necessários.
