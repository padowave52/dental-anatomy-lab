-- Supabase SQL Editor에서 실행합니다.
-- 관리자 계정은 Supabase Authentication > Users에서 먼저 생성하세요.
create table if not exists public.site_settings (
 id text primary key,
 config jsonb not null default '{}'::jsonb,
 updated_at timestamptz not null default now()
);
alter table public.site_settings enable row level security;
drop policy if exists "anyone can read public dental settings" on public.site_settings;
create policy "anyone can read public dental settings" on public.site_settings for select to anon,authenticated using (id='dental');
-- 아래 YOUR_ADMIN_USER_UUID를 Authentication > Users의 실제 관리자 UID로 교체하세요.
drop policy if exists "only site admin updates dental settings" on public.site_settings;
create policy "only site admin updates dental settings" on public.site_settings for update to authenticated
 using (id='dental' and auth.uid() = 'YOUR_ADMIN_USER_UUID'::uuid)
 with check (id='dental' and auth.uid() = 'YOUR_ADMIN_USER_UUID'::uuid);
-- 초기 FDI 32개 공용 데이터 삽입
insert into public.site_settings (id, config) values ('dental', '{"version": 31, "meshFDI": {"polySurface2": "11", "polySurface4": "12", "polySurface6": "13", "ZBrushPolyMesh3D8": "14", "ZBrushPolyMesh3D9": "15", "polySurface8": "16", "polySurface10": "17", "polySurface12": "18", "polySurface1": "21", "ZBrushPolyMesh3D1.001": "22", "ZBrushPolyMesh3D2.001": "23", "ZBrushPolyMesh3D3.001": "24", "ZBrushPolyMesh3D4.001": "25", "ZBrushPolyMesh3D5.001": "26", "polySurface9": "27", "ZBrushPolyMesh3D7.001": "28", "LL1seam_2:ZBrushPolyMesh3D": "31", "LL2seam_2:ZBrushPolyMesh3D": "32", "LL3seam_2:ZBrushPolyMesh3D": "33", "LL4seam_2:ZBrushPolyMesh3D": "34", "LL5seam_3:ZBrushPolyMesh3D": "35", "LL6seam_2:ZBrushPolyMesh3D": "36", "LL7seam_2:ZBrushPolyMesh3D": "37", "LL8seam_2:ZBrushPolyMesh3D": "38", "ZBrushPolyMesh3D7": "41", "ZBrushPolyMesh3D6": "42", "ZBrushPolyMesh3D5": "43", "ZBrushPolyMesh3D3": "44", "ZBrushPolyMesh3D4": "45", "ZBrushPolyMesh3D2": "46", "ZBrushPolyMesh3D1": "47", "ZBrushPolyMesh3D": "48"}, "changes": {}}'::jsonb)
on conflict (id) do update set config=excluded.config;
