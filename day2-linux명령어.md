# linux명령어
## 목록
* linux 쉘 기본 명령어
* 쉘 스크립트 기본 문법과 작성방법
* linux 단축키
* vim 사용방법 및 단축키

# linux 쉘 기본 명령어
## 종류 
* cd
* ls
* mv
* cp
* cat
* less
* tail
* nohup
* mkdir
* rm
* clear
* pwd
* chown
* chmod
* grep
* history
* ps
* man과 tldr

### cd
가장 많이 쓰는 명령어 "change directory"의 약자
- 특정 디렉토리로 이동
```
cd <가고자 하는 디렉토리 경로>
cd    # 사용자 디렉토리로 이동
cd /  # root 디렉토리로 이동
cd .. # 상위 디렉토리로 이동
cd Desktop/wecode  # Desktop 하위 wecode 디렉토리로 이동
```

**실습**

<img src="https://user-images.githubusercontent.com/95902842/178623185-a3082b55-f80e-4f98-aa2a-b0331fb2d5eb.png"/>

### ls
"list"의 약자로, 현재 디렉토리에 속한 파일 및 디렉토리를 나열
```
ls  #현재 디렉토리에 있는 내용 출력
ls -a # 숨겨진 파일이나 디렉토리도 함께 보여줌
ls -l # 자세한 내용(권한, 포함된 파일 수, 소유자, 그룹, 파일크기, 수정일자, 파일이름)
ls -al # a와 l의 기능을 모두 포함
ls -h -al # -h를 붙이면 K, M, G 단위의 파일크기를 사용하여 사람에게 보기 좋게 표시
```

**실습**

<img src="https://user-images.githubusercontent.com/95902842/178633550-0e396e16-f1f9-4d3a-aa2a-f1a07c81a4c9.png"/>

### mv
"move"의 약자로 파일이나 디렉토리를 원하는 곳으로 옮기거나, 이름을 변경할 때 사용할 수 있는 명령어
```
mv <원본 파일명> <옮기고 싶은 디렉토리명>     # 해당 디렉토리로 파일 이동
mv <원본 파일명> <바꾸고 싶은 파일명>         # 원본 파일 이름 변경
mv <원본 디렉토리명> <옮기고 싶은 디렉토리명>  # 해당 디렉토리로 디렉토리 이동
mv <원본 디렉토리명> <바꾸고 싶은 디렉토리명>  # 원본 디렉토리 이름 변경
```

**실습**


<img src="https://user-images.githubusercontent.com/95902842/178633712-74e8bceb-9190-4bfc-851f-43bdd251e504.png"/>

### cp
"copy"의 약자로 파일이나 디렉토리를 원하는 곳에 원하는 이름으로 복사할 수 있는 명령어
```
cp <원본 파일명> <옮기고 싶은 디렉토리명>               # 해당 디렉토리로 원본 파일 복사 
cp <원본 파일명> <복사해서 만들고 싶은 파일명>           # 해당 파일명으로 사본 파일 생성
cp <원본 파일명1> <원본 파일명2> <옮기고 싶은 디렉토리명> # 여러 파일을 한 번에 해당 렉토리로 복사
cp <원본 디렉토리> -r <옮기고 싶은 디렉토리명>           # 원본 디렉토리의 하위 파일까지 모두 해당 디렉토리로 복사
cp <원본 디렉토리> -r <복사해서 만들고 싶은 디렉토리명>   # 위의 방식을 응용해서 복사해서 만들고 싶은 디렉토리 생성
```

**실습**

<img src="https://user-images.githubusercontent.com/95902842/178625626-f7553bae-185b-4310-a2eb-b4810f20c1a6.png"/>

### cat
"concatenate"약자로 두 개 이상의 파일을 연결해서 출력할 때 사용
```
cat <파일명1> <파일명2> ...			     # 기본적인 사용방법. 두 개 이상의 파일을 연달아 출력함
cat -n <파일명1> <파일명2> ...	      	# 출력결과 앞에 행을 붙여서 출력
cat <파일명1> <파일명2> ... > <새로운 파일명> # ">" 앞에 있는 파일 내용을 합쳐 새로운 파일로 만들어줌
cat <파일명1> <파일명2> ... > <기존 파일명>   # ">" 앞에 있는 파일 내용을 합쳐 기존 파일에 덮어씌움
cat <파일명1> <파일명2> ... >> <기존 파일명>  # ">" 앞에 있는 파일 내용을 합쳐 기존 파일 뒤에 덧붙여줌
```

**실습**

<img src="https://user-images.githubusercontent.com/95902842/178625923-9b273352-fc8b-4226-9e0e-0730aa6c6fe2.png"/>

### less
파일의 내용을 확인하는 명령어 중 하나로 vim과 같은 내부창에 새로 출력 파일을 확인하나 수정은 불가

```
less <파일명>
[내부 창 단축키]
q: 종료 후 쉘창으로 복귀
enter: 1행 아래로 이동
space bar 또는 f: 아래로 1페이지 이동
숫자+n : 원하는 페이지만큼 뒤로 이동
PageUp: 위로 1페이지 이동
PageDown: 아래로 1페이지 이동
```
**실습**

<img src="https://user-images.githubusercontent.com/95902842/178626347-874fa576-a6f8-4cb9-a9ba-6b661bc32eaf.png"/>
<ima src="https://user-images.githubusercontent.com/95902842/178626311-585b8b58-3bd9-48d0-b41a-6e203bacba79.png"/>

### tail
마지막 행을 기준으로 지정한 행까지의 파일 내용을 일부 출력, defaulte값은 10행
```
tail <파일명>      # 기본형
tail text.txt      # 1~35까지 입력된 텍스트 파일 중 마지막 10개 행이 출력됨
tail -n 5 <파일명> # -n 뒤에 숫자를 입력하면, 마지막 행부터 해당 번째까지의 행이 출력됨
tail +25 <파일명>  # tail 뒤에 +숫자를 붙이면 해당 행부터 마지막 행까지 출력됨
tail -c 10 <파일명> # -c 뒤에 숫자를 입력하면, 행 기준이 아닌 byte 기준으로 출력됨
tail -f <파일명>    # -f 를 붙이면, 종료되지 않은 채 실시간으로 마지막 10줄을 출력해줌. ctrl+c 로 종료
```

**실습**

<img src="https://user-images.githubusercontent.com/95902842/178626732-a426fd29-c74f-4b34-96e1-3bc3c1bd7fdb.png"/>

### nohup
터미널을 종료해도 프로그램이 백그라운드에서 계속 실행되도록하는 명령어

### mkdir
"make directory"의 약자로 새로운 디렉토리를 만들 수 있는 명령어 (+ touch <파일명> 으로는 새로운 파일을 만들 수 있음)
```
mkdir <새로운 디렉토리명>  # 해당 경로에 새로운 디렉토리를 만들어줌
mkdir -p <새로운 디렉토리명 +"/" + 새로운 하위 디렉토리명> # 하위 디렉토리까지 함께 생성
mkdir -p dir1/subdir1      # dir1이라는 새로운 디렉토리와 그 안에 하위 디렉토리인 subdir1까지 함께 만들어줌
```

**실습**

<img src="https://user-images.githubusercontent.com/95902842/178627530-adf7fcd8-805e-4b6d-a1b8-1a0f08fa6454.png"/>

### rm
"remove"의 약자로 파일과 디렉토리 삭제에 사용되는 명령어

```
rm <파일명>  			 # 해당 파일을 삭제
rm *.txt    			 # .txt로 끝나는 모든 파일을 삭제
rm *       		      # 전체 파일 삭제
rm -r <파일명/디렉토리명>  # 해당 파일/디렉토리 삭제
rm -rf <파일명/디렉토리명> # 해당 파일/디렉토리 강제 삭제(경고문구 없이 삭제)
```

**실습**

<img src="https://user-images.githubusercontent.com/95902842/178628029-b40348cb-0777-4b01-8ce5-66ba2d13cd25.png"/>

### clear
쉘 창에 있는 기록을 모두 지워주는 명령어

**실습 before**

<img src="https://user-images.githubusercontent.com/95902842/178628146-3b4c999e-cf65-4913-ae74-839b61e8e438.png"/>

**after**

<img src="https://user-images.githubusercontent.com/95902842/178628268-032dcfff-232b-49dd-9fc4-59e52fab6cba.png"/>

### pwd
"print working directory"의 약자로 현재 작업 중인 디렉토리의 절대 경로를 반환

**실습**

<img src="https://user-images.githubusercontent.com/95902842/178628413-65a4d4c0-4275-42b2-b71f-3f1b179290de.png"/>

### chown
파일이나 디렉토리의 소유권자 및 그룹식별자를 바꾸는 명령어 "change ownership"

```
chown <소유권자>:<그룹식별자> <소유권을 변경하고 싶은 파일명>     # 해당 파일의 소유권자, 그룹식별자 변경
chown <소유권자>:<그룹식별자> <소유권을 변경하고 싶은 디렉토리명>  # 해당 디렉토리의 소유권자, 그룹식별자 변경(하위 디렉토리는 변경 안됨)
chown -R <소유권자>:<그룹식별자> <소유권을 변경하고 싶은 파일명>   # 해당 디렉토리 및 하위 디렉토리의 소유권자, 그룹식별자 변경
```

### chmod
파일이나 디렉토리의 퍼미션을 수정할 수 있는 명령어
ls-al명령어를 치면 아래와 같은 결과가 출력되는데요, 여기서 맨 앞에 있는 rwxr-xr-x 이 9자리의 문자가 퍼미션과 관계가 있습니다. 참고로 9자리 문자의 앞에 있는 "d"는 디렉토리, "i"는 링크파일, "-"는 일반파일을 나타냅니다.

9자리를 표현하는 문자는 "r", "w", "x","-" 4가지가 있는데요, 각각 아래와 같은 뜻을 가집니다.

"r" : 읽기 권한
"w" : 쓰기 권한
"x" : 실행 권한
"-" : 권한 없음
그리고 9자리는 각각 3자리씩 나눠서 권한을 가지는 사용자를 구분

첫 3자리 : 소유자
중간 3자리 : 그룹
마지막 3자리 : 모든 사용자
위에서 나왔던 rwxr-xr-x를 예시로 보면, 소유자는 읽고, 쓰고, 실행할 수 있는 모든 권한(rwx)을 가졌고, 그룹과 모든 사용자는 읽고 실행할 수 있는 권한(r-x)을 가졌네요. 이 권한을 수정할 수 있는 방법은 아래와 같습니다.
chmod <변경될 퍼미션 값> <변경할 파일/디렉토리>

여기서 퍼미션 값이란, 각 문자를 숫자로 변환한 값(r=4, w=2, x=1)을 더한 값입니다. 예를 들어 rwx는 7, r-x는 5입니다. 이런식으로 각 그룹별로 끊어서 숫자를 입력하면 됩니다.
```
chmod 755 <변경할 파일/디렉토리> # 소유자는 모든 권한, 나머지는 읽고 실행할 수 있는 권한
chmod 750 <변경할 파일/디렉토리> # 소유자는 모든 권한, 그룹은 읽고 실행할 수 있는 권한, 나머지는 아무 권한 없음
```
**실습**

<img src="https://user-images.githubusercontent.com/95902842/178629461-74dc7958-51ef-44b3-af47-dd1f4ab53dcf.png"/>

### grep
특정 파일 내에 지정한 패턴을 가진 문자열을 찾은 후, 해당 문자열을 출력함
패턴은 정규표현식을 따름
```
grep <패턴> <파일명> # 특정 파일에서 특정 패턴을 가진 문자열을 출력
grep <패턴> * 		# 현재 디렉토리 모든 파일에서 특정 패턴을 가진 문자열을 출력
grep <패턴> * -r    # 현재 디렉토리 및 하위 디렉토리에서 특정 패턴을 가진 문자열을 출력
```
**실습**

<img src="https://user-images.githubusercontent.com/95902842/178629759-ef801ed1-fd70-49c7-b003-4af16960da0e.png"/>

### history
현재까지의 모든 명령어 리스트를 행 넘버와 함께 출력

```
history -c # 히스토리 리스트를 지워줌
```

**실습**

<img src="https://user-images.githubusercontent.com/95902842/178629953-14746663-d199-4afc-903f-6318eb65c0a0.png"/>

### ps
현재 동작하는 프로세스의 목록을 출력
-a : 전체 사용자의 프로세스 출력
-u : 각 프로세스 사용자 및 사용시간 출력
-x : 제어 터미널이 없는 프로세스 출력
-l : 자세한 형태의 정보 출력
-e : 모든 프로세스 상태 출력

```
ps -aux  # BSD 구문을 사용하여 시스템의 모든 프로세스를 출력
ps -ejH  # 프로세스를 트리형식으로 출력
```

**실습**

<img src="https://user-images.githubusercontent.com/95902842/178630203-b844b453-afb2-4c1f-a781-093150bb88d8.png"/>

### man과 tldr
man은 명령어를 설명해주고 중요한 부분만 알려주는 명령어는 tldr인데, tldr의 경우 패키지매니저를 통해 따로 설치해야함

**실습**

<img src="https://user-images.githubusercontent.com/95902842/178630542-328380e4-addc-44f1-aa65-53a519519a30.png"/>

# 쉘 스크립트 기본 문법과 작성방법
## 목록
* 기본문법
* 작성방법(변수, 반복문, 비교문, 종료상태 등)

### 기본문법
- 쉘스크립트 기본
쉘 스크립트는 쉘에게 무슨 명령들을 실행할지 알려주는 스크립트 파일입니다. 여기서는 가장 널리쓰이는 bash 쉘을 보고

최상단에는 #!/bin/bash가 적혀있어야한다. 파일명은 exam.sh로 설정

**실습**

<img src="https://user-images.githubusercontent.com/95902842/178634734-69cdcd38-2fd5-4220-99b2-d643713753de.png"/>

**해당 코드 실행 및 권한 추가**
<img src="https://user-images.githubusercontent.com/95902842/178635036-369692a8-f56e-47c8-a11a-ce38ea6aed75.png"/>

### 작성방법(변수, 반복문, 비교문, 종료상태 등)
- 변수
변수명 = 값 으로 선언 후 사용할 때는 $ 를 앞에 붙여줌</br>
\${변수}식으로 사용

<img src="https://user-images.githubusercontent.com/95902842/178636381-12d2928b-5622-49b4-bed3-07d5fc577c04.png"/>

export를 사용하여 다른 쉘 스크립트에서 사용할 수 있게한다.

<img src="https://user-images.githubusercontent.com/95902842/178636600-78b2cf26-a49c-48fa-87f3-59286fb84cb2.png"/>
<img src="https://user-images.githubusercontent.com/95902842/178636633-3078e381-fcdb-45fa-85ca-7b922f49eb53.png"/>
<img src="https://user-images.githubusercontent.com/95902842/178636685-0d088fcb-bd43-48d2-9f60-845fd8aa7516.png"/>


- 매개변수
프로그램에서도 실행할 때 인자를 주듯 쉘 스크립트 역시 그렇게 할 수 있다. 실행한 스크립트 이름은 ${0}, 그 이후는 전달받은 인자 값
```
echo "script name:${0}"
echo "매개변수 갯수 :${#}"
echo "전체 매개변수  값 : ${*}"
echo "전체 매개변수 값2 : ${@}"
echo "매개변수 1 : ${1}"
echo "매개변수 2 : ${2}"
```

- 예약변수
사용자가 정해서 만들 수 없는 이미 정의된 변수

|이름|내용|
|---|---|
|Home| 사용자의 홈 디렉토리|
|PATH|실행 파일의 경로|
|LANG|프로그램 실행 시 지원되는 언어|
|UID|사용자의 UID|
|SHELL|사용자가 로그인 시 실행되는 쉘|
|USER|사용자의 계정 이름|
|FUNCNAME|현재 실행되고 있는 함수 이름|
|TERM|로그인 터미널|

- 배열
쉘 스크립트에서 배열은 1차원 배열만 지원하며 중괄호를 사용
배열 원소는 소괄호안에 공백으로 구분하고, 배열 안 원소는 문자열과 정수 모두 포함

<img src="https://user-images.githubusercontent.com/95902842/178645622-fb17c1f9-9d7d-45ac-b7ef-ba2410c2ffc3.png"/>

-함수
함수명 앞에 function을 기입 여부는 따르지 않으며, 호출 되기 전 함수가 정의되어있어야 함<br>
(※ 호출할 때는 괄호를 써주지 않고 호출)

<img src="https://user-images.githubusercontent.com/95902842/178646181-0d46d83c-0f7c-4b9c-9d1e-195ae096c71c.png"/>

- 비교문
비교문 형식
```
if [값1 조건 값2]; then
        ... 작업 내용 ...
fi
```

<img src="https://user-images.githubusercontent.com/95902842/178646517-1ecbd86b-9d48-41f4-875b-292130915e50.png"/>

쉘스크립트는 명령어를 다루는 스크립트이기 때문에 파일이 존재하는지, 디렉토리가 존재하는지 등 파일과 관련된 조건 여부도 조건문을 통해 알 수 있다.

|조건|설명|
|:----:|----|
|` if [ -d ${변수} ]; then ` |${변수}의 디렉토리가 존재하면 참이 성립합니다.|
|`if [ -e ${변수} ]; then `|${변수}라는 파일이 존재하면 참입니다.|
|`if [ -L ${변수} ]; then	`|파일이 symbolic link이면 참입니다.
|`if [ -s ${변수} ]; then	`|파일의 크기가 0보다 크면 참입니다.
|`if [ -S ${변수} ]; then	`|파일 타입이 소켓이면 참입니다.
|`if [ -r ${변수} ]; then	`|파일을 읽을 수 있으면 참입니다.
|`if [ -w ${변수} ]; then	`|파일을 쓸 수 있으면 참입니다.
|`if [ -x ${변수} ]; then	`|파일을 실행할 수 있으면 참입니다.
|`if [ -f ${변수} ]; then	`|파일이 정규 파일이면 참입니다.
|`if [ -c ${변수} ]; then	`|파일이 문자 장치이면 참입니다.
|`if [ ${변수1} -nt ${변수2}]; then`|	변수1의 파일이 변수2의 파일보다 최신 파일이면 참입니다.
|`if [ ${변수1} -ot ${변수2}]; then`|	변수1의 파일이 변수2의 파일보다 최신이 아니면 참입니다.
|`if [ ${변수1} -ef ${변수2}]; then`|	변수1의 파일과 변수2의 파일이 동일하면 참입니다.
 
 여러 조건을 걸려면 else if 역할을 하는 elif를 사용하여 `elif[조건]; then`으로 사용

반복문의 경우 `break`라는 키워드를 사용하여 반복문을 멈출 수 있음
세미콜론 2개로 종료도 가능함

<img src="https://user-images.githubusercontent.com/95902842/178649228-a628968b-3459-4ac6-9ea8-7ad1f5f56247.png"/>

- 반복문

for

<img src="https://user-images.githubusercontent.com/95902842/178649899-d8cd92ed-2147-4b51-b802-3f83b1eeccc6.png"/>

- 명령어 종료 코드(exit)

$? 에 종료코드가 있는데, 정상종료는 0 != 비정상 종료
오류를 내는 c파일을 작성후 gcc로 컴파일

    c파일

<img src="https://user-images.githubusercontent.com/95902842/178650651-93b1d231-7c9e-4684-96af-bbf5794e3fa9.png"/>

    결과 및 sh파일

 <img src="https://user-images.githubusercontent.com/95902842/178650629-7a992586-0618-4d87-87d0-a0f47228405c.png"/>

 
 # Linux 단축키
 ## 종류
 - 단축키
 - 실행 중인 프로그램을 제어하는 단축키
 - bash 상에서 기본 입력 모드인 emacs 스타일일 경우

### 단축키
`shift + Ctrl + c` 복사하기<br>
`Shift + Ctrl + V` 붙여넣기<br>
`Ctrl + L` 화면 Clear <br>

### 실행 중인 프로그램을 제어하는 단축키
`Ctrl + c` 실행 중인 프로그램 중지<br>
`Ctrl + z` 실행 중인 프로그램 일시 정지<br>
`%` 일시 정지된 프로그램 다시 실행

### bash 상에서 기본 입력 모드인 emacs 스타일일 경우
`Tab `: 자동 완성<br>
`Ctrl + D` : 로그아웃<br>
`Ctrl + R` : 히스토리 찾기<br>
`Ctrl + S` : 키보드 잠그기<br>
`Ctrl + Q` : 잠긴 키보드 풀기<br>
`Ctrl + M` : Enter<br>
`Ctrl + P` : 이전 명령어 (Up)<br>
`Ctrl + N` : 다음 명령어 (Down)<br>
`Ctrl + L` : 화면 지우기 (clear)<br>
`Ctrl + Y` : 버퍼의 내용 붙여넣기<br>
`Ctrl + A` : 입력 라인의 처음으로 이동 (Home)<br>
`Ctrl + E` : 입력 라인의 끝으로 이동 (End)<br>
`Ctrl + B` : 커서를 왼쪽으로 이동 (Left)<br>
`Ctrl + F` : 커서를 오른쪽으로 이동 (Right)<br>
`Ctrl + XX` : 커서를 이전 위치로 이동<br>
`Ctrl + U` : 커서 왼쪽의 문자들을 버퍼에 저장 후 삭제<br>
`Ctrl + K`: 커서 오른쪽의 문자들을 버퍼에 저장 후 삭제<br>
`Alt + L `: 커서 위치에서 문자열 끝까지 소문자로 변환<br>
`Alt + U` : 커서 위치에서 문자열 끝까지 대문자로 변환<br>
`Alt + T` : 두 단어 위치 바꾸기<br>
`Alt + B` : 커서를 다음 단어로 이동<br>
`Alt + F` : 커서를 이전 단어로 이동<br>