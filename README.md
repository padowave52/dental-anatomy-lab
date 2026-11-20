# Dental Anatomy Lab — 좌측 16개 표면 학습 (V26)

## 배포
1. ZIP 압축을 풀고, `index.html`이 있는 폴더 안의 **파일과 fonts 폴더**를 GitHub 저장소 최상위(root)에 업로드합니다.
2. Settings → Pages → Deploy from a branch → `main` / `(root)`를 선택합니다.
3. 페이지에서 전체 치열의 좌측 치아(FDI 21–28, 31–38)를 클릭한 후 '선택 치아만 보기'를 누르면 해당 색상 GLB가 나타납니다.
4. 우측 치아(FDI 11–18, 41–48)는 원래 단색 치아가 표시됩니다.

## 구성
- `teeth_model_transparent.glb`: 기존 전체 치열 모델
- `tooth_21_annotated.glb` … `tooth_38_annotated.glb`: 사용자 제공 좌측 16개 GLB
- `index.html`: 표면별 색상 라벨/안내선, 360도 회전, 치아 설명, 투명도 조절
- `fonts/`: 로컬 서체

## 주의
- GLB의 표면 재질 이름(`labial`, `buccal`, `lingual`, `mesial`, `distal`, `occlusal` 등) 기준으로 라벨을 자동 생성합니다.
- 제공 GLB에 없는 개별 영역은 생성하지 않습니다. 21~23/31~33에 절단연 또는 첨두가 구분되어 있지 않으면 해당 라벨이 없습니다.
- `tooth_31_annotated.glb`에는 독립된 mesial 재질이 없어 근심면 안내가 표시되지 않습니다.
- 전체 치열의 객체 FDI 번호 매칭은 기존 사이트의 규칙을 유지하며, 원본의 이름/위치 기반 추정이 일부 포함되어 있습니다. 검수 후 공개 학습 자료로 사용하는 것이 좋습니다.
- GLB의 실제 표면 방향과 치아 번호 일치 여부는 자동으로 해부학적 검증되지 않습니다.
- 재배포 시 치아 모델 및 서체 라이선스를 확인하십시오.
