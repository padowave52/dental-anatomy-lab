# Dental Anatomy Lab — GitHub Pages 배포판

이 폴더의 파일은 별도 빌드 과정 없이 GitHub Pages에서 실행하는 정적 웹사이트입니다.

## 배포하기
1. GitHub에서 **Public** 저장소를 만듭니다. (예: `dental-anatomy-lab`)
2. 이 폴더 **안의 파일과 `fonts` 폴더**를 저장소의 최상위(root)에 업로드합니다. ZIP을 그대로 업로드하지 마세요.
3. 저장소의 **Settings → Pages → Build and deployment**에서 **Deploy from a branch**를 선택합니다.
4. Branch: **main**, Folder: **/(root)** 를 선택하고 Save 합니다.
5. 게시 주소: `https://<GitHub-사용자명>.github.io/<저장소명>/` 에 접속합니다. 배포 상태는 Settings → Pages 또는 Actions에서 확인할 수 있습니다.

### 주요 파일
- `index.html`: 웹사이트
- `teeth_model.glb`: 전체 치열
- `tooth_23_annotated.glb`, `tooth_36_annotated.glb`: 표면 학습 모델
- `fonts/`: 글꼴

### 주의사항
- 웹사이트의 3D 엔진(Three.js)은 jsDelivr에서 불러오므로 인터넷 연결이 필요합니다.
- 번호·설명 직접 편집 내용은 **사용자의 브라우저 localStorage에만 저장**됩니다. GitHub 저장소나 다른 방문자의 화면에 자동 반영되지 않습니다. `JSON 백업` 기능으로 별도 보관하세요.
- GitHub Pages가 Public 저장소에 게시되면 콘텐츠와 파일은 공개적으로 접근 가능합니다. 업로드한 모델, 이미지 및 글꼴의 공개 배포 권한을 확인해 주세요.
- 별도의 `python http.server`나 Windows BAT 실행이 필요하지 않습니다.


## Update
- `tooth_36_annotated.glb` has been replaced with a semi-transparent 36th tooth model (`Tooth_Transparent.glb`).
- The uploaded transparent model was identified as **36번 치아** based on embedded mesh/material names (`Tooth_36`, `occlusal surface`, `buccal surface`, `lingual surface`, `mesial surface`, `distal surface`).
