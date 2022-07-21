# Javascript 문법

## Javascript 첫 걸음
    Javascript란 웹 페이지의 복잡한 기능을 구현할 수 있도록하는 스크립팅 언어(+ 프로그래밍 언어)

    정적인 내용 뿐 아니라 주기적으로 갱신 되거나, 사용자와 상호작용 및 애니메이션 그래픽을 관여

## 애플리케이션 프로그래밍 인터페이스 (API)라고 부르는 이 기능들은 Javascript 코드를 사용 가능함

API는 개발자가 직접 구현하기는 어렵거나 불가능한 기능들을 미리 만들어서 제공 (ex ; 가구 DIY 키트)

- 브라우저 API

    웹 브라우저에 내장된 API로 현재 컴퓨터 환경에 관한 데이터를 제공하거나 여러가지 유용하고 복잡한 일을 수행
    - DOM(Document Object Model) API로 HTML콘 텐츠를 추가, 제거, 변경하고, 동적으로 페이지에 스타일을 추가하는 등 HTML/CSS를 조작할 수 있다. 페이지 위에 뜨는 팝업창 등..
    - Geolocatio API로 지리정보를 가져올 수 있다.<br> 
    .<br>
    .<br>
    .<br>
    등

웹페이지에서 Javascript는 DOM API를 통해 HTML과 CSS를 동적으로 수정, 사용자 인터페이스를 업데이트 하는 일에 가장 많이 쓰임.

## Javascript 실행 순서

브라우저가 Javascript 블록을 마주치면, 일반적으로 위에서부터 아래로 실행합니다.

만약 순서에 따라 객체의 생성 전 객체를 호출하게 되었음
`TypeError: para is undefined`가 나타나며, para 객체가 아직 존재하지 않으므로 이벤트 수신기를 부착할 수 없다는 뜻인 로고가 노출됨

Javascript는 가볍고, 인터프리터를 사용하는 프로그래밍 언어이다. 웹 브라우저는 Javascript 코드를 원문 텍스트 형식으로 입력받아 실행.

## 서버 사이드와 클라이언트 사이드 코드를

클라이언트 사이드 코드는 사용자의 컴퓨터에서 동작하는 코드로 웹 페이지를 방문하면 브라우저가 페이지 내의 클라이언트 사이드 코드를 다운로드하고 실행해서 화면에 띄운다. 

반대로 사버 사이드 코드는 서버에서 동작하는 코드로, 그 실행 결과를 브라우저가 다운로드해서 화면에 띄우게 되며 유명한 서버 사이드 웹 언어로는 PHP, Python, Ruby, ASP.NET, 그리고 Javascript가 있다
Javascript는 브라우저 뿐만 아니라, 많은 사람들이 사용하는 Node.js환경 처럼 서버 사이드 언어로도 사용할 수 있다.

## Javascript에 발 담그기

Javascript는 대소문자를 구별하여 유니코드 문자 셋을 이용합니다.

- 선언

     Javascript에서는 3가지 선언 방법이 있습니다.

`var` : 변수를 선언. 추가로 동시에 값을 초기화
`let` : 블록 스코프 지역 변수를 선언, 추가로 동시에 값을 초기화
`const` : 블록 스코프 읽기 전용 상수를 선언

- 변수 

    변수명은 식별자(identifiers)라고 불리며 특정 규칙을 따릅니다

Javascript 식별자는 밑줄(_) 혹은 달러 기호 ($)로 시작해야하나 그 뒤는 숫자가 와도 가능

값
|용어|의미|
|---|---|
|데이터 타입(Data Type)| 프로그래밍 언어에서 사용할 수 있는 값의 종류|
|변수(Variable)|값이 저장된 메모리 공간의 주소를 가리키는 식별자(identifiers)|
|리터럴(literal)|소스코드 안에서 직접 만들어낸 상수 값 자체를 말하며 값을 구성하는 최소 단위|

자바스크립트의 모든 값은 데이터 타입을 갖는다. 자바스크립트는 7가지 데이터 타입을 제공한다.

원시타입 (primitive data type)
 
- number
- string
- boolean
- null
- undefined
- symbol

객체 타입(Object data type)
- Object

```
// Number
var num1 = 1001;
var num2 = 10.50;

// String
var string1 = 'Hello';
var string2 = "World";

// Boolean
var bool = true;

// null
var foo = null;

// undefined
var bar;

// Object
var obj = { name: 'Lee', gender: 'male' };

// Array
var array = [ 1, 2, 3 ];

// function
var foo = function() {};
```

문

프로그램(스크립트)은 컴퓨터에 단계별로 수행될 명령들의 집합이다.
각각의 명령을 문이라고 하며 문이 실행되면 무슨 일이 일어나게 된다.

문은 리터럴, 연산자(Operator), 표현식(Expression), 키워드(keyword)등으로 구성되며 ;으로 끝나야 한다.

```
var x = 5;
var y = 6;
var z = x + y;

console.log(z);
```

문은 코드블록으로 그룹화 할 수 있다. 그룹화의 목적은 함꼐 실행되어져야 하는 문의 정의하기 위함이다.

```
// 함수
function myFunction(x, y) {
  return x + y;
}

// if 문
if(x > 0) {
  // do something
}

// for 문
for (var i = 0; i < 10; i++) {
  // do something
}
```

문들은 일반적으로 위에서 알래로 순서대로 실행된다. 이러한 실행 순서는 조건문(if, switch)이나 반복문(while, for)의 사용으로 제어할 수 있다. 

단 블록 유효 험위를 생성하지 않는다. 함수 단위의 유효범위만 생성된다.

 
```
var time = 10;
var greeting;

if (time < 10) {
  greeting = 'Good morning';
} else if (time < 20) {
  greeting = 'Good day';
} else {
  greeting = 'Good evening';
}

console.log(greeting);
```

함수는 이름과 매개변수를 갖고 필요할 때 호출하며 코드 블록에 담긴 문들을 일괄적으로 실행할 수 있다.

```
// 함수의 정의(함수 선언문)
function square(number) {
  return number * number;
}

// 함수의 호출
square(2); // 4
```


비교 연산자에 대한 메모

비교 연산자는 우리의 조건문 안의 조건을 테스트하는데 사용됩니다. 

- ===와 !== — 한 값이 다른 값과 같거나 다른지 테스트한다.
- < 와 > — 한 값이 다른 값보다 작은지 큰지 테스트한다.
- <= 와 >= — 한 값이 다른 값보다 작거나 같은지, 크거나 같은지 테스트한다.

조건문에서 논리적 OR 연산자를 사용할 때의 일반적인 실수는 여러분이 검사하는 값의 변수를 한 번 명시하기(state)를 시도하고, 그리고 true를 리턴할 수 있는 값들의 목록을, || (OR) 연산자에 의해 분리하며 제공하는 것입니다. 

예를 들자면: `if (x === 5 || 7 || 10 || 20) {
  // run my code
}`

switch문

다수의 선택을 가지고 있는 경우 표현식/ 값을 받고 값과 일치하는 하나를 찾을 때가지 여러 항목을 살펴보고 그에 맞는 코드를 실행.

```
switch (expression) {
  case choice1:
    run this code
    break;

  case choice2:
    run this code instead
    break;

  // 원하는 만큼 많은 case를 포함하십시오

  default:
    actually, just run this code
}
```

삼항연산자

삼항(조건)연산자는 조건을 테스트하고 만약 조건이 ture라면 하나의 값/ 표현식을 리턴하고 만약 false라면 다른 값/ 표현식을 리턴하는 구문이다- 이것은 어떤 상황에 유용할 수 있으며, 만약 true/false조건 사이를 총해 선택되는 두 서낵을 가지고 있다면 if...else 블록보다 코드를 더 적게 사용할 수 있다.

`(condition) ? run this code : run this code instead

예시..1

```
let greeting = ( isBirthday )? 'Happy birthday Mrs. Smith - we hope you have a greate day!': 'Good morning Mrs. Smith.';
```

isBrithday에 ture라면 Happy birthday Mrs. Smith... 가 노출

예시..2

삼항연산자로 단지 변수 값만을 정할 필요가 없고 무엇이든지 좋아하는 함수나 코드를 실행할 수 있다. 

html 코드

```<label for="theme">Select theme: </label>
<select id="theme">
  <option value="white">White</option>
  <option value="black">Black</option>
</select>

<h1>This is my website</h1>
```

js코드
```
const select = document.querySelector('select');
const html = document.querySelector('html');
document.body.style.padding = '10px';

function update(bgColor, textColor) {
  html.style.backgroundColor = bgColor;
  html.style.color = textColor;
}

select.onchange = function() {
  ( select.value === 'black' ) ? update('black','white') : update('white','black');
}
```

이벤트 입문

이벤트란 프로그래밍하고 잇는 시스템에서 일어나는 사건이나 발생.

예제

html 코드
```
<button>Change color</button>
```

js코드
```
const btn = document.querySelector('button');

function random(number) {
  return Math.floor(Math.random() * (number+1));
}

btn.onclick = function() {
  const rndCol = 'rgb(' + random(255) + ',' + random(255) + ',' + random(255) + ')';
  document.body.style.backgroundColor = rndCol;
}
```

## Javascript 객체 기본

객체는 관련된 데이터와 함수(일반적으로 여러 데이터와 함수로 이루어지는데, 객체 안에 있을 때는 보통 프로퍼티와 메소드라고 부름)

점 표기법

객체 이름은 네임스페이스 처럼 동작, 객체 내에 캡슐화되어있는 것에 접근하려면 점을 입력해야함.

ex) `person.age
    person.intereste[1]
    person.bio()`

하위 namespaces

다른 객체를 객체 멤버의 값으로 갖는 것도 가능합니다. 예를 들면, 다음과 같은 name멤버를 변경

`name : ['Bob', 'Smith']`

>>> 변경 후

`name : {
  first: 'Bob',
  last: 'Smith'
},`

이렇게 변경이 되었으면 사용법도

`name[0] name[1]`
>>> 변경 후

`name.first name.last`

점 표기법과 같은 경우에는 위의 예제처럼 멤버의 이름을 동적으로 사용할 수 없고, 상수 값만을 사용해야 함

# this란?

```
greeting: function() {
    alert('Hi! |\;m '+ this.name.first+'.');
}
```

this는 멤버의 컴텍스트가 바뀌는 경우에도 언제나 정확한 값을 사용하게 해줌.

person 예시
```
var person1 = {
  name: 'Chris',
  greeting: function() {
    alert('Hi! I\'m ' + this.name + '.');
  }
}

var person2 = {
  name: 'Deepti',
  greeting: function() {
    alert('Hi! I\'m ' + this.name + '.');
  }
}
```
 person1.greeting() 은 "Hi! I'm Chris." 를 출력합니다. 반면 <br>person2.greeting() 은 "Hi! I'm Deepti." 을 출력하게 됩니다. 

반환문

자바스크립트에서 함수는 반환(return)문을 포함할 수 있습니다.
이러한 반환문을 통해 호출자는 함수에서 실행된 결과를 전달받을 수 있다.

```
function multiNum(x, y) {

    return x * y;         // x와 y를 곱한 결과를 반환함.

}

var num = multiNum(3, 4); // multiNum() 함수가 호출된 후, 그 반환값이 변수 num에 저장됨.

document.write(num);
```

함수의 호출

정의된 함수는 프로그램 내에서 호출되어야 비로소 실행
일반적인 함수의 호출은 함수의 정의문과 같은 형태로 호출할 수 있다.

함수의 정의
```
function addNum(x, y){
    return x + y;
}
```

함수의 호출
```
var sum = addNum(3, 5) //함수 addNum()을 호출하면서, 인수와 3과 5를 전달, 호출이 끝난 뒤 반환값을 변수 sum에 대입
```

값으로서의 함수

자바스크립트에서 함수는 문법적 구문일뿐만 아니라 값이기도 함

따라서 함수가 변수에 대입될 수도 있으며, 다른 함수의 인수로 전달될 수도 있습니다.

```
function sqr(x){
    return x*x;
}
var sqrNum = sqr;
document.write(sqr(4)+"<br>");
document.write(sqrNum(4));
```

# 예외처리

예외(exception) ; 실행 중에 발생하는 런타임 오류

자바스크립트에서는 throw 키워드를 사용하여 예외를 발생시킬 수 있다.

`throw 표현식` 표현식에는 예외코드를 나타내는 숫자나 오류메시지를 담고있는 문자열, Error객체 등이  올 수 있다.


예외 처리(exception handling) ; 예외를 처리하기 위해 try/catch/finally문 사용

```
try{
    예외를 처리하길 원하는 실행 코드;
}catch (ex){
    예외가 발생할 경우에 실행될 코드;
}finally{
    try 블록이 종료되면 무조건 실행될 코드;
}
```

Error 객체

자바스크립트에서는 런타임 오류가 발생할 때마다 Error 객체의 인스턴스가 만들어져 오류의 정보를 저장

```
var btn = document.getElementById("throwExBtn");      // 아이디가 "throwExBtn"인 요소를 선택함.

btn.addEventListener("click", throwEx);               // 선택한 요소에 click 이벤트 리스너를 등록함.

function throwEx() {

    try {

        throw new Error("직접 발생시킨 오류입니다!"); // Error 객체를 사용해 명시적으로 오류를 발생시킴.

    } catch (ex) { // 발생된 오류를 매개변수 ex로 접근할 수 있음.

        document.getElementById("text").innerHTML = ex.name + "<br>"; // name 프로퍼티는 오류의 타입을 저장함.

        document.getElementById("text").innerHTML += ex.message;   // message 프로퍼티는 오류 메시지를 저장함.

    }

}


```

# Strict 모드

더욱 엄격한 오류검사를 적용

`use strict`지시어를 사용하여 선언할 수 있다.

```
"use strict"    // 전체 스크립트를 strict 모드로 설정함.

try {

    num = 3.14; // 선언되지 않은 변수를 사용했기 때문에 오류를 발생시킴.

} catch (ex) {

    document.getElementById("text").innerHTML = ex.name + "<br>";

    document.getElementById("text").innerHTML += ex.message;

}
```

strict모드의 문법에 따라 엄격하게 검사
```
str = "실수!" //선언되지 않은 변수를 사용했지만 자동 전역 변수로 선언

document.getElementById("noStrict").innerHTML = str + "<br>";
function StrictBlock(){
    "use strict" //함수 블록만을 strict모드로 설정
    try{
        num = 123
    }catch(ex){
        document.getElementById("funcStrict").innerHTML = ex.name + "<br>";
        document.getElementById("funcStrict").innerHTML += ex.message;
    }
}
StrictBlock();
```

strict모드의 특징
    
    기존 자바 스크립트 언어의 일부 기능을 제한한 문법을 사용.
    (+ 몇가지 중요한 기능을 수정하여 강력한 오류 검사와 함께 향상된 보안 기능을 제공)

기존 자바스크립트의 문법과 다른 strict 모드의 문법

|대상|제한 사항|
|---|---|
|변수| 선언되지 않은 변수나 객체를 사용 x 
||eval()함수 내에서 선언된 변수는 외부에서 사용할 수 없음|
|프로퍼티|읽기 전용 프로퍼티에는 대입할 수 없음|
||한프로퍼티를 여러번 정의할 수 없음|
|함수|함수를 구문이나 블록 내에서 선언할 수 없음|
|매개변수|매개변수의 이름이 중복되어서는 안됨|
||arguments객체의 요소 값을 변경할 수 없음|
|문자열|문자열"eval"과 "arguments"는 사용할 수 없음|
|8진수|숫자 리터럴에 8진수 값을 대입할 수 없음}
|this|this포이터가 가르키는 값이 null이나 undefined인 경우 전역 객체로 변환되지 않음|
|delete|delete키워드를 사용할 수 없음|
|with|with문을 사용할 수 없음|
|예약어|다음 예약어들은 사용할 수 없음(implements, interface, let, package, private, protected, public, static, yield)

