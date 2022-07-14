# git명령어
## 목록
- git이란? (+ git의 특징과 단점 )
- 기본 명령어
- 작업 분기
- GitHub 공유
- 실전 프로젝트
- 커밋 정리

### **Git이란?**
    리누스 토발즈가 2005년에 만든 분산 버전 관리 시스템(Distributed version control systems)
*Git 의 특징*
    
    기본기능은 이력관리로 Git은 전체 소스 파일을 대상으로 해당 기능을 제공하고, 협업에 필요한 다양한 기능을 가지고 있다.

**속성 용어 설명**
|키워드|뜻|
|---|---|
|repo|저장소/Git으로 버전 관리하는 디렉토리|
|local repo| 로컬 저장소/작업자의 개발환경에 설정된 Git 저장소
|remote repo|원격 저장소/GitHub 등 외부 서버에 설정된 Git저장소
|commmit|커밋/특정상태를 기록한 것, 버전을 의미
|branch|브랜치/또 다른 작업공간을 의미
|merge|머지/한국어의 뜻은 병합, 합치기 특정 브랜치에서 작업한 내용을 또 다른 브랜치에 적용하는 것을 의미

*Git의 장점*
    
    Small and Fast
        서버와 통신 할 필요가 없고 대부분의 작업이 로컬에서 이루어짐
    
    Distributed
        Git은 분산 버전 관리 시스템이고 로컬에 원격 저장소의 모든 데이터를 복제하기 때문에 사실상 개발자 수만큼 백업이 되어 있다. 필요하면 원격 저장소를 여러 개 만들 수 있고 다양한 작업방식을 도입할 수 있는 진정한 분산 관리형 시스템
    
    Data Assurance
        Git은 데이터 무결성을 보장
    
    Staging Area 
        Git은 커밋 이전에 스테이징 또는 인덱스라 불리는 상태를 가지는데, 이 상태에서 커밋 내역을 검토하고 특정 파일만 먼저 커밋할 수 있다.
    
    Free and Open Source

*Git의 단점*
    
    스테이징, 커밋, 푸시, 풀을 알아야하고 브랜치도 적극적으로 쓰나보니 복잡함
    타 분산 버전 관리 시스템 (ex: svn)에 비해  쉬운 GUI 도구가 없고, CLI( command-line interface, CLI, 커맨드 라인 인터페이스)를 많이 사용하기에 진입장벽이 높다. 

### **기본 명령어**

저장소 생성부터 기본적인 이력 관리 방법

```git init```
    
    로컬 Git 저장소를 설정
    디렉토리에 .git 디렉토리가 생성
※ 기본 브랜치 설정이 master인 경우 main으로 변경 시

``` git branch -M main ```

현재 상태 확인

```git status```

    현재 작업중인 파일의 상태 확인
    "gst" 로 기입하여도 동일한 기능 수행
<img src="https://user-images.githubusercontent.com/95902842/178860549-d035fad5-4c39-48cf-a172-a783dea6e51a.png"/>

branch 가 master로 잡혀있는 것을 확인할 수 있고,
commit되지 않은 파일과 추적하지 않는 파일이 존재하는 것을 확인할 수 있다.

현재 상태 추적

```git add [-A] [<psthspec>...]```

    파일의 변경사항을 인덱스에 추가, Git은 커밋 전에 파일을 추가함

    git add -a (=gaa) 전체 파일 추가

<img src="https://user-images.githubusercontent.com/95902842/178861421-b1162be3-b4d2-4e0a-8676-2ce7034f9114.png"/>

추적중인 day1이 없어진 걸 확인할 수 있음

현재 상태 저장

```git commit [-m <msg>]```

    인덱스에 추가된 변경 사항을 이력에 추가
    -m 을 이용하여 첫 번째 이력에 대한 메시지 작성
<img src="https://user-images.githubusercontent.com/95902842/178861854-29a113fe-84df-4ac9-9a2e-354e371229e5.png"/>

이력 확인

```git log [<options>] [<revision range>] [[--] <path>...]```
 
    다양한 옵션을 조합하여 원하는 형택의 로그를 출력할 수 있는 강력한 기능

<img src="https://user-images.githubusercontent.com/95902842/178862315-b98fc5f9-9e56-44b6-9cec-35c645daa4df.png"/>

이전 상태로 (이력 제거)

```git reset [<commit>] [--soft | --mmixed [-N] | --hard | --merge | --keep]```

    특정 커밋까지 이력을 초기화, 바로 전 또는 n번째 전까지 작업했던 내용을 취소할 수 있다.

이전 상태로 (이력 유지)

```git revert <commmit>...```

특정 버전을 배포했는데 문제가 생기면 문제가 생긴 커밋을 revert 함


### **작업 분기**

브랜치 생성

```git switch (-c|-C) <new-branch>```

    "c"의 옵션 
        브랜치 생성과 브랜치 이동을 한번에 수행
        다음 명령어와 동일함
        ┌git branch <브랜치 이름>
        └git swtich <브랜치 이름>

브랜치 합치기

```git merge [<commit>...]```

    main 브랜치로 이동
    ┌git switch main
    타 브랜치의 수정사항 main으로 머지
    ┌git merge <브랜치 이름>

충돌 해결

```git merge --abort```
    
    머지작업을 취소

### **GitHub 공유**

깃헙에 레포지토리를 생성 한 후 

원격 저장소 저장

```git remote add <name> <url>```

```git push [-u | --set-upstream] [<repository> [<refspec>...]]```

<img src="https://user-images.githubusercontent.com/95902842/178867558-e86442f9-c3b5-4a76-8611-2bb22cd0b4aa.png"/>

원격 저장소 복제

```git clone <repository> [<directory>]```

깃헙에서 https 주소를 복사한 후 sample-2 디렉토리에 원격 저장소를 복제

```git clone <복사한 주소 url> sample-2```

원격 저장소 내용 가져오기

```git pull [<repository> [<refspec>...]]```

<img src="https://user-images.githubusercontent.com/95902842/178868090-06b83ff3-247d-4fec-9a07-e085d8755e4a.png"/>

    Git Pull을 자주하자
        원격 저장소와 로컬 저장소의 차이가 커지면 나중에 충돌이 많이 발생하기에 Git pull은 자주 수행하는 것이 좋다.

GitHub Flow

    Pull Request와 코드 리뷰기능을 적극적으로 활용한 Github Flow 방식

    GitHub에서 제안하는 프로젝트 관리방법, 브랜치와 pull Request라는 개념 사용

<img src="https://user-images.githubusercontent.com/95902842/178873789-a4cdb7c3-84f2-486c-a12a-46bc21703923.png"/>

완료 후 깃허브 화면 

<img src="https://user-images.githubusercontent.com/95902842/178874424-74f8c1fb-f12c-419b-9065-d8d5e04be536.png"/>

원격 브랜치가 생성되면 자동으로 compare & pull request버튼이 보임

작업 내용을 간략히 적고 create pull request버튼은 선택

<img src="https://user-images.githubusercontent.com/95902842/178877120-5aeebfbc-f972-4a41-9a7e-1ea23a3e9989.png"/>

최종 머지 완료
# Git for Teams 도서 중 브랜치 전략에 대하여

<img src="https://user-images.githubusercontent.com/95902842/178884154-69aa4287-026f-4c19-a808-ada2c253d38c.png"/> 
버전관리에서 브랜치 코드를 어떻게 발전시킬 것인가를 놓고 서로 평행선을 달릴 때 분할하는 방식이다. 브랜치는 항상 코드 베이스의 특정한 시점에서 시작된다.

- 어떻게 팀을 위한 브랜치 규약을 정할 것인가
- 메인라인 개발
- 기능별 브랜치 배포했는데- 상태 브랜칭
- 정기 배포

**브랜치 이해하기**

Git 저장소에는 커밋 풀(pool)이 있다. 이 커밋들은 자신의 메타데이터를 통해 서로 연결돼있다. 모든 커밋은 자신의 부모에 대한 참조를 갖는다. 병합 커밋의 경우, 하나 이상의 부모 커밋이 참조될 수 있다. 
Git의 브랜치는 사실 특정 커밋에 대한 이름이 있는 포인터라고 할 수 있다. 브랜치를 살펴본다는 것은 커밋 객체에 담긴 데이터 그리고 수정사항을 새로운 커밋 객체로 로컬 저장소에 저장할 수 있다. 기존의 이름 있는 퐁니터는 자동으로 업데이트되어  새롭게 생성한 커밋 객체를 가리키고, 그 결과 해당 브랜치가 업데이트된다.

**규약 선택하기**

규약은 작업을 보통 어떤 식으로 할 것인가에 대한 합의된 표준이다. 규약 덕에 개바라들은 특정 소프트웨어 프로젝트의 개발 방식 패턴을 바르게 익히고, 팀의 다른 개발자의 작업을 방해 하지 않으면서도 자신의 작업을 통합할 수 있다. 문서화로 만들어진 규약이 있으면 새로운 개발자가 개발에 참여하기가 더 쉬워지고 기존 팀원도 새 팀원의 적응을 돕는데 더 적은 시간을 소모한다.

**규약**

두 가지 다른 접근법이 존재한다. 하나는 "항상 통합"하는 접근법이고 하나는 완료된 작업을 모아 한 번에 릴리스 하는 방식이다. 두 가지 사이에는 많은 변형된 작업 방식이 있다.

**요약**

GitHub, Bitbucket, GitLab 같은 Git 호스팅 시스템에서는 특정한 버그나 기능 티켓을 위한 작업을 분리하는 데 브랜치를 사용하기도 한다. 사용하는 브랜치 전략에 따라서, 무한히 브랜치를 분리할 수도 있고 브랜치를매우 자주 병합하여 개별 작업ㅇ르 하나의 배포 가능한 브랜치로 통합할 수도 있다. 비록 모든 정보는 저장소 안에 저장되지만, 한 번에 확인할 수 있는 브랜치는 오직 하나다. 체크아웃된 브랜치만이 작업 폴더에서 확인할 수 있다. 만약 두 가지 아이디어를 가지고 작업하면서 둘 모두 서버에 보내고 싶다면 두 브랜치를 병합해 하나의 공통 브랜치로 만들어야 한다. 그래야 둘 모두 작업 폴더에서 한 번에 확인할 수 있다.

브랜치 전략의 변형
- 메인라인 개발
- 기능별 브랜치 배포
- 상태 브랜칭
- 정기 배포

이 전략에 더해, 팀에서 새로운 작업을 공유 브랜치에 통합하고 브랜치를 업에이트하는 방식도 결정해야 한다. 많은 초보 개발 팀이 브랜치 업데이트 방법을 분명하게 정해두지 않는다. 소개된 전략은 두 가지로 리베이스와 병합이다. 리베이스 전략은 정기적으로 업에이트하지 않는다면 좀 더 어려울 수 있다. 병합을 사용해 업데이트하면 프로젝트 히스토리는 검토하기 더 어려워진다. 만약 작업의 기우너이 중요하지 않다면 두 번략 모두 사용할 수 잇다. 그러나 히스토리를 자주 검토해야한다면 리베이스 전략을 선택하는 것이 더 나을 것이다.

* 작업 취소를 위한 git명령어

|명령어|용도|
|---|---|
|git checkout -b branch| branch라는 이름의 새 브랜치를 생성|
git add filename(s)|저장소에 커밋하기 위해 파일을 준비 영역에 추가한다
git commit|준비 영역에 추가된 수정사항을 저장소에 저장한다
git checkout branch|현재 작업 브랜치를 특정한 브랜치로 교체한다
git merge branch|브랜치 branck의 커밋을 현재 브랜치에 통합한다
git branch --delete|로컬 브랜치를 삭제한다
git branch -D|커밋이 다른 곳에 통합되지 않은 로컬 브랜치를 삭제한다
git clone URL |원격 저장소의 로컬 사본을 생성한다
git log|현재 브랜치의 커밋 히스토리를 읽는다
git reflog|현재 브랜치의 확장 히스토리를 읽는다
git checkout commit|특정 커밋을 체크아웃하고 떨어진 HEAD상태가 된다
git cherry-pick commit|하나의 브랜치 커밋을 다른 브랜치로 복사한다
--끝--