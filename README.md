# Dental Anatomy Lab V30 — 공용 FDI 번호 / 설명 배포

기본 FDI 번호 32개는 `teeth_config.json`의 `meshFDI`에 저장됩니다. GLB 객체 메쉬 이름을 키로 사용합니다.

## 설치 및 GitHub Pages 배포
1. 이 폴더 **안의** 모든 파일을 GitHub 저장소 최상위(root)에 업로드하세요.
2. Settings → Pages → Deploy from a branch → main / (root)를 선택하세요.
3. `https://padowave52.github.io/dental-anatomy-lab/`에서 확인하세요.

## 번호/설명 수정해서 모든 방문자에게 적용
1. 사이트에서 오른쪽 `FDI 번호 선택`으로 해당 치아를 선택합니다.
2. `치아 번호·설명 직접 편집하기`에서 번호 또는 설명을 변경한 후 `이 치아 저장`을 클릭합니다.
3. `공용 설정 다운로드`를 눌러 `teeth_config.json`을 내려받습니다.
4. 이 파일을 GitHub 저장소 최상위의 기존 `teeth_config.json`과 교체해 Commit합니다.
5. GitHub Pages 배포 완료 후 새로고침하면 다른 방문자도 동일한 번호/설명을 봅니다.

**주의**: 화면에서 저장하는 것만으로 GitHub 서버가 업데이트되지는 않습니다. 누구나 즉시 수정할 수 있는 방식이 아니라 배포자가 JSON을 GitHub에 올려 확정하는 방식입니다.

**검수**: 32개 매핑은 기존 원본 메시 대응표를 기반으로 합니다. 실제 해부학적 FDI가 올바른지의 최종 검수는 필요합니다. 클릭되지 않는 객체는 번호 선택 메뉴를 이용하세요.
