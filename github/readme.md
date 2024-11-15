### 깃 커밋에서 푸시까지

1. git init 해당 폴더나 파일 관리 시작
2. 
3. git config
    - git config user.name "nikname" 사용자 이름 설정
    - git config user.email "e-mail" 사용자 이메일 설정
    - git config --list 설정된 값 확인
    --local: 현재 저장소에만 적용 (기본값)
    --global: 사용자의 모든 저장소에 적용
    --system: 시스템의 모든 사용자와 저장소에 적용 -- 잘 사용하지 않음
      
4. git add 파일명   변경된 파일을 스테이징 영역에 추가
   git add .       모든 변경 사항 추가

5. git status  변경사항 확인

6. git commit -m "커밋 메시지"

7. git remote -v 원격 저장소 확인

8. git pull origin 브랜치명   최신 변경사항 가져오기

9. git push origin 브랜치명   푸시


### Git 되돌리기

1. git reset    원하는 시점의 커밋으로 이동
                이동한 커밋을 기준으로 이후의 모든 커밋 이력을 삭제
        --hard [커밋 해시]      : 이전 commit으로 되돌리고 이후 이력들을 모두 삭제
        --soft [커밋 해시]      : 이전 commit으로 되돌리고 이후 이력들의 내용이 삭제되지 않음. stage에 올라가있어 언제든지 commit을 진행가능한 상태가 됨.
        --mixed [커밋 해시]     : 이전 commit으로 되돌리고 그 이후 이력들의 내용이 삭제되지 않았지만 다시 commit하려면 add 명령어를 사용해 stage에 올려 commit해야함.

    #### reset은 개인 프로젝트에 적합함. 다른 모든 경우에서는 reset대신 revert를 사용함.

2. git reflog     프로젝트가 위치한 커밋이 바뀔 때마다 기록되는 내역 확인 (복구를 원하는 해시값 확인)

2.1 git reset --hard 해시값        해당 해시값의 commit을 복구

3. #log 정보 확인 후 커밋 해시 확인 및 복사
git log

#복사한 커밋 해시를 이용해 reset 옵션으로는 hard를 사용 
git revert [커밋 해시]

#다시 한번 log를 활용해 정상적으로 reset이 되었는지 확인
git log


