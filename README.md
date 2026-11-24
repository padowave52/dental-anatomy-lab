# Dental Anatomy Lab V27 — 32개 영구치 FDI 매칭 배포용

## 파일
- index.html — GitHub Pages 정적 웹사이트
- teeth_model_transparent.glb — 전체 치열용 원본 메시 (위치 유지)
- tooth_11_annotated.glb ~ tooth_48_annotated.glb — 전체 32개 표면 색상 학습 모델
- fonts/ — 사용 글꼴
- .nojekyll — GitHub Pages용 설정
- FDI_mesh_mapping.csv — 각 번호와 전체 치열 메시 객체 매칭 기록

## 배포
모든 파일을 GitHub 저장소 루트에 업로드하고 Settings > Pages에서 main / (root)로 배포합니다.
기존 index.html을 반드시 교체하세요. 기존에 올라간 다른 버전의 파일은 사용하지 않더라도 남아 있어도 됩니다.
배포 후 강력 새로고침 Ctrl+Shift+R을 사용하세요.

## 적용 방식
- 전체 32개 GLB마다 면 수와 3D 경계 좌표를 전체 치열 GLB와 대조했습니다.
- 32개 객체와 32개 FDI 번호 사이에 일대일 대응이 확인되었습니다.
- 전체 치열에서 치아를 클릭하면 FDI 번호가 표시되고 '선택 치아만 보기'를 통해 그 번호의 색상 GLB를 표시합니다.
- 우측 및 좌측, 상악 및 하악 모두 지원합니다.
- 실제 GLB에 존재하는 표면 재질에 한해서 이름·라벨을 표시합니다.
- 치아 표면의 해부학적 분할과 한글 방향의 정확성은 별도 검수가 필요합니다.
- 본 버전은 브라우저 저장소 키를 변경하여 이전 버전에서 실수로 저장된 번호 편집 값이 신규 기본 매칭을 덮어쓰지 않도록 했습니다.
- 네트워크가 없는 환경에서는 three.js CDN을 불러올 수 없습니다.
