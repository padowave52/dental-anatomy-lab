# Dental Anatomy Lab V31

## 무엇이 수정됐나요?
- 미지정 3D 치아 메시도 클릭하여 FDI 번호를 입력할 수 있도록 기존 클릭 흐름 복구
- 일반적인 32개 GLB 및 치아 표면 학습 기능 유지
- GitHub Pages는 정적이므로 모든 컴퓨터에 자동 반영되는 저장에는 Supabase 설정이 필요합니다.
- 설정 전에도 치아 편집 및 `teeth_config.json` 다운로드/수동 GitHub 배포는 가능합니다.

## 기존 방식: 공용 JSON을 GitHub에 직접 올리기 (별도 서비스 없음)
1. 사이트에서 치아를 클릭하고 '치아 번호·설명 직접 편집하기'로 수정합니다.
2. '이 치아 저장' 다음 '공용 설정 다운로드'로 `teeth_config.json` 파일을 받습니다.
3. 기존 GitHub 저장소 최상위 `teeth_config.json`을 교체하고 Commit합니다.
4. 모든 방문자는 새로고침하면 수정된 매칭/설명을 봅니다.

## 권장: 다른 컴퓨터에도 즉시 공용 저장 (최초 1회 Supabase 연결 필요)
1. Supabase 프로젝트를 만들고 Authentication > Users에서 **관리자 이메일 계정**을 생성합니다.
2. SQL Editor에서 `SUPABASE_SETUP.sql`을 실행하기 전에 `YOUR_ADMIN_USER_UUID`를 관리자의 UID로 바꿉니다.
3. 위 SQL에는 현재 32개 치아 매칭의 초기 공용 설정 삽입까지 포함되어 있습니다.
4. `cloud_config.json`의 `supabaseUrl`에는 Project URL, `anonKey`에는 publishable/anon key를 입력합니다.
   **service_role 키, 비밀번호, 관리자 액세스 토큰은 절대 GitHub에 올리지 마세요.**
5. 수정된 `cloud_config.json`을 포함한 V31 파일을 GitHub 저장소 최상위에 올립니다.
6. 홈페이지에서 '치아 번호·설명 직접 편집하기' → 관리자 이메일/비밀번호 로그인 → 치아 번호/설명 수정 → '이 치아 저장'을 누릅니다.
7. 공용 DB에 저장되어 새 방문자는 즉시, 열려 있는 다른 컴퓨터는 새로고침하면 동일 내용을 볼 수 있습니다.

참고: 공용 데이터는 읽기 공개, 쓰기는 Supabase RLS로 특정 관리자 UID만 허용합니다. 사이트를 방문한 일반인은 저장할 수 없습니다. 관리자 세션 토큰은 브라우저 메모리에서만 유지하며 새로고침하면 다시 로그인해야 합니다.
