# WSL을 이용한 Linux 환경구성방법

## 목록
+ WSL이란 ; wsl1과 wsl2의 차이
+ Linux란 ; Linux를 사용하는 이유
+ 환경 구성 방법에 대하여

# WSL이란
리눅스용 윈도우 하위시스템(Windows Subsystem for Linux)로 윈도우에서 리눅스 환경을 실행하기 위한 호환경 계층을 뜻함.

## wsl1과 wsl2의 차이
"wsl"는  wsl2와 달리 OS파일 시스템 간 성능이 좋지만, 관리 VM,  전체 Linux커널, 전체 시스템 호출 호환성이 좋지 못하거나 없다.</br>
"wsl2"는 가장 유용한 최신 가상화 기술로써 간단한 유틸리티 VM(가상머신)내에서 Linux 커널을 실행하며 부팅속도가 굉장히 빠르다.

# Linux란
오픈소스 운영체제로 UNIX롸 유사하게 설계되어있으며, 커맨드라인을 통해 컴퓨터에 직접 액세스할 수 있다.

## Linux를 사용하는 이유
크게 3가지로 구분된다.(=무료 오픈소스, 우수한 보안성, 구조 안전성)
<img src = "https://user-images.githubusercontent.com/95902842/178410330-4b85e327-1d1f-4302-bc18-13bc76224b43.png"/>

수정과 픽스되었기 때문에 충돌이 잘 발생되지 않으며 사용자들에 의해 수정도 빠른 편이다.

# 환경 구성 방법에 대하여
-환경 : WSL2 + Ubuntu + VSCode + Vue.js 

WSL2사용
- 윈도우 10의 빌드버전을 확인하고 2004이전이면 업데이트한다.
- wsl2 정식버전을 google 및 브라우저에 검색하여 powershell명령어를 복사하여 실행한다.

정식버전 브라우저

https://www.lesstif.com/software-architect/wsl-2-windows-subsystem-for-linux-2-89555812.html

- PowerShell명령어

wsl활성화
```
dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart
```
WSL2가 사용하는 VM platform 옵션 활성화
```
dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart
```
* PowerShell을 관리자 권한으로 열어 수행해야함

- 윈도우를 재부팅 후 마이크로소프트 스토어를 열어 Ubuntu를 설치 버튼을 선택하여 다운로드와 설치를 진행
- 설치가 완료되면 wsl에 등록
먼저 사용할 계정명과 암호를 기입(enter 키)
Ubuntu 내에 wsl 버전확인
```
wsl -l -v
```

WSL 2에 커널 구성요소 업데이트
```
https://aka.ms/wsl3kernel
```
해당 주소에 업데이트 파일을 받아 설치하고 다시 버전 확인 명령어를 기입하여 version2 확인


버전 변경 코드
```
wsl --set-version Ubuntu 2
```
```
wsl --set-default-version 2
```

## VSCode설치

브라우저에 VScode를 검색하여 설치 파일을 다운로드 받는다.

https://code.visualstudio.com/download

처음 들어가면 wsl을 설치하여 vscode를 재시작한다.
<img src="https://user-images.githubusercontent.com/95902842/178419454-05ced478-e935-4870-bea6-4a1f554f68cc.png"/>


왼쪽 맨아래 녹색아이콘을 선택하여 메뉴에서 오픈폴더를 선택하여 home 파일을 선택하여 open한다.
상단 터미널을 선택하여 wsl2 우분투 터미널을 열어 환경을 확인할 수 있다.

개발도구를 설치하기 위해 익스텐션페이지에서 java Extenstion Pack과 Vetur를 설치
<img src="https://user-images.githubusercontent.com/95902842/178418529-61801a54-542f-44f0-b195-6f6a57eab623.png"/>

## vue.js설치

터미널에 ```sudo apt install npm```을 입력하여 처음 입력한 비밀번호와 Y(허용)하여 설치한다

```npm --version```을 통해 버전을 확인하고

```npm install -g @vue/cli```을 기입하여 vue.js를 설치하고 

하다가 되지 않는다면
```
sudo apt update && sudo apt upgrade
```
도 해준다.

```sudo npm install -g @vue/cli```도 시도해보고

버전확인 및 설치 확인은 ```vue --version```을 통해 확인할 수 있다.

vue 프로젝트 생성 ```vue create "폴더명" ```
enter을 누르면 시작된다.

ctrl+k+ctrl+o를 눌러 vscode의 폴더를 프로젝트 위치로 바꾼 후 메뉴창에서 바꿔준다.

--뷰 개발 준비 완료 --


# 디버깅

터미널을 열어 ```npm run serve```를 입력하여 서버를 열면 vue소스파일이 바벨이 컴파일하고 web태그로 묶는다.

url문구를 ctrl+click하여 브라우저를 열고 브레이크 포인트를 설정

구성추가하여 브라우저를 추가하고 오류가 나면 소스에서 디버그가 멈춘 것을 볼 수 있다.

소스창 상단에 수행메뉴를 사용하여 중지버튼을 눌러 디버그를 종료시킨다.


### (+깃 설치 및 허브 연동
깃 clone에 설정 및 아래 코드 기입
```
sudo apt-get install git
sudo apt update && sudo apt upgrade
sudo apt install git && git --version
```
git의 username이 있는지 확인
```nano ~/.gitconfig``` or ```git config --global user.name``` or ```git config --global user.email```
해당 vi에서 name과 email이 없으면 추가 및 설정

```
git config --global user.name 이름
```
```
git config --global user.email 이메일
```

그 후 개인 깃허브에 레포지토리를 만든다.
현재 이 디렉터리에 git repository생성
```git init``` 

git 상태 확인
```git status```

파일 스토리지에 올리기
```git add -파일이름``` or ```git add .```

파일 삭제 ``` git rm -파일이름 ```


커밋
``` git commit -m "커밋메세지"```

레포지토리 경로 지정하기
``` git remote add origin 깃허브의 내 레포지토리 경로.git```

push
``` git push -u origin master``` // pull의 경우 ```git pull -u origin master```
