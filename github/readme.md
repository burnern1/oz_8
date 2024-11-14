### 깃 커밋에서 푸시까지

1. git init 해당 폴더나 파일 관리 시작
2. git config
    - git config user.name "nikname" 사용자 이름 설정
    - git config user.email "e-mail" 사용자 이메일 설정
    - git config --list 설정된 값 확인
    --local: 현재 저장소에만 적용 (기본값)
    --global: 사용자의 모든 저장소에 적용
    --system: 시스템의 모든 사용자와 저장소에 적용 -- 잘 사용하지 않음
3. git add 파일명   변경된 파일을 스테이징 영역에 추가
    git add . 모든 변경 사항 추가
4. git status  변경사항 확인
5. git commit -m "커밋 메시지"
6. git remote -v 원격 저장소 확인
7. git pull origin 브랜치명   최신 변경사항 가져오기
8. git push origin 브랜치명   푸시