# Java 기본문법
## 목록
- 프로그래밍 기초 문법
- 예외처리
- 상속
- 추상클래스
- 인터페이스

### 프로그래밍 기초 문법
    - 키워드
    - 함수와 변수
    - 자료형
    - 배열과 조건문
    - 연산자


**키워드**

- public 

    접근 제한자(클래스 및 클래스의 구성원에 접근을 허락하는 기능)

    접근 제한자에서 public의 역할은 다른 패키지에 있는 클래스 및 클래스 자원 (변수, 메서드)을 사용할 수 있게 하는 역할

- class

    자바 프로그램의 최소단위
    
    종류 : 일반 클래스, 추상클래스, 인터페이스 클래스, 파이널 클래스, 익명 클래서, 어뎁터 클래스, 인너 클래스, 중첩 클래스 

- main 

    자바에서 콘솔 어플리케이션에서만 사용하는 특수한 자원

- static

    변수 또는 함수의 자료형 앞에 기술해서 사용하며 프로그램이 시작할 때 생성되고, 프로그램이 시작할 때 static 키워드가 붙어있는 자원을 자바 가상버신이 해당 자원을 메모리에 올려줌

    * 함수 앞에 static을 사용하였으면, 해당 함수 브록 내에서 또 static을 사용하면 안됨

- package

    자바 클래스는 항상 package에 있어야함 <br>
    package는 자바 디렉토리 또는 클래스 파일을 모아두는 곳

- new

    자바 가상 머신이 new 키워드를 보면 new 뒤에 있는 클래스 이름을 보고, 해당하는 클래스를 메모리에 올림

    사용 방법

    * 클래스 이름 선언
    * 참조 변수 선언
    * 대입 연산자 선언
    * new 키워드 선언
    * 생성자 선언


    ```클래스이름 변수(참조변수, reference variable) = new 클래스이름();```

    static vs new : 톨게이트 예시

    static 명령어를 사용하면, 클래스 내 함수에서 쉽게 출력이 가능한데, new 명령어를 사용하면

```
클래스 이름 참조변수 =  new 클래스이름();
System.out.println(참조변수.출력하고자하는 변수);
```
    톨게이트 예시

    예시로, 서울에서 운전을 해서 급하게 부산을 가야할 일이 생겼다고 합시다.

    부산을 가기위해 경부고속도로를 타고 가려는데, 고속도로에 들어가려면 톨게이트를 통과해야만 고속도로를 이용할 수 있습니다.

    이 때, 하필 톨게이트 직원들이 전부 파업해서 하이패스로만 고속도로에 들어갈 수 있다고 가정하면, static은 이 때, 내 차에 있는 하이패스 리더기라고 볼 수 있습니다.

    자바가상머신에 컴파일을 할 때, static이 있으면, 고속도로를 바로 이용할 수 있는 것입니다.

    그런데 만약 하이패스 리더기가 차에 없다면??

    경부고속도로를 이용해서 부산에 가려고 하는데, 하필 이 때, 하이패스 리더기 수리를 맡겨서
    없다면 어떻게 해야 할까요?



    고속도로를 이용하지 못하기 때문에, 국도를 이용해 부산에 가야 할 것입니다.

    여기서 포인트는,

    첫 번째로 고속도로와 국도는 다르다는 것입니다.

    두 번째로 고속도로로 가던 국도로 가던 결국 부산에 갈 수 있다는 것입니다.

|static|new|
|---|---|
|고속도로|	국도|


용어설명

|용어|설명|
|---|---|
|객체|객체 지향 프로그램의 대상, 생성된 인스턴스|
|클래스|객체를 프로그래밍하기 위해 코드로 만든 상태|
|인스턴스|클래스가 메모리에 생성된 상태|
|멤버 변수|클래스의 속성, 특성|
|메서드|멤버 변수를 이용하여 클래스의 기능을 구현|
|참조변수|메모리에 생성된 인스턴스를 가르키는 변수|
|참조 값|생성된 인스턴스의 메모리 주소 값|




**함수와 변수**

함수

    데이터를 담아두는 상자
    - 영문자 소문자로 시작
    - 함수 뒤에는 ()로 선언
    - 소괄호 안에는 parameter(매개변수)를 순차적으로 선언
    - 소괄호 뒤에는 {}로 블럭 선언
|키워드 종류|키워드 이름|
|---|---|
|접근 제한자| public, proteted, default, private|
|수정자|static, final
|리턴형|void, 기초자료형, 참조자료형, 사용자 정의 클래스 데이터|

final - 더이상 수정하지 않는 의미의 수정자 키워드

void - 반환하지 않는 키워드

함수 매개변수

    함수에서는 매개변수(parameter)를 선언하여 사용할 수 있음.
    함수를 선언할 때, 소괄호에 데이터 타입을 선언하고, 변수명을 선언하는 것을 파라미터라고 함.
    매개변수 : 연결해 주는 변수
    함수를 호출할 때, 함수 이름 뒤에 소괄호에 들어가는 값 또는 변수를 인수(argument)라고 부름


변수

    데이터를 담는 상자

자료형
|기초자료형|참조 자료형|
|---|---|
|byte, char, short, int, long, float, double, boolean|Stirng, Array, interface

변수를 사용하는 방법
    
    자료형 선언 변수명 선언;
    or
    자료형 선언 변수명 선언 = 변수의 값;

자바에서 변수는 상수, 클래스 변수, 전역 변수, 멤버 변수, 지역변수로 나뉨

자바에서 자바 클래스에 내부에 선언하는 변수를 filed라고 부름

**자료형**

    JVM에서 컴파일할 때, JAVA는 어떤 데이터 자료형이 들어와도 int밖에 모름

형변환
    
    묵시적 형변환 vs 명시적 형변환

`byte-char-short-int-float-double` 순

왼쪽에서 오른쪽으로 묵시적 형변환이 가능하나, 오른쪽에서 왼쪽으로 자료형을 변환하는 것은 byte가 큰 자료형을 byte가 작은 자료형으로 변환하는 것이기에 캐스팅 연산자를 사용해야하는데, 이는 명시적 형변환이라고 함

묵시적 형변환 예시<br>
char ch1='A';
int intCh1 = ch1;

명시적 형변환 예시<br>
int i = 32;
char chi = (char)i;

* 위와 같이 명시적 형변환의 경우 `(char)`같은 캐스팅 연산자를 사용해 주어야 함

문자와 문자열

    String은 char의 집합이자 배열

String을 초기화 하는 방법
    
    "", null

```Stirng str0="";```

배열과 조건문

배열

    데이터를 순차적으로 관리하는 객체
    
***1차원 배열 3가지 출력 방법***
```
데이터형 참조변수[] 배열연산자 = new 데이터형 [배열이 들어갈 공간] 배열연산자;
데이터형 참조변수[] = new 데이터형[]{};
데이터형 참조변수[] = {};
```

***2차원 배열 출력 방법***
```
자료형 배열참조변수[][] = new 자료형[배열의 갯수][배열의 갯수];
자료형[][] 배열참조변수 = new 자료형[배열의 갯수]배열의 갯수;
자료형[] 배열참조변수[] = new 자료형[배열의 갯수]배열의 갯수;
```

조건문

    특정 조건에 맞게 수행하거나 반복하도록 제어할 수 있는 제어문
    제어문(조건문, 반복문)_if, switch, for, while, do while

if
```
 if(){

}else{

}
```

boolean와 else

    if문을 쓰기 앞서서, boolean 키워드를 사용하고, else 문을 사용

예시
```
boolean xyBool=x<y;
		System.out.println(xyBool);
		
		if (xyBool){
			System.out.println("true");
		} // end of xyBool keyword
```

for

```
for(초기화식; 조건식; 증감식){
    ~
}
```

    초기화식은 데이터 타입 변수 = 값
    조건식은 boolean = 조건;

    JAVA에서는 for 키워드를 JVM이 보면 for 키워드 뒤에 이()가 있으면 무조건 반복 수행합니다.


while

    for문과 다르게 아무내용이 없을 경우 컴파일 에러가 발생

예시
|for|while|
|:---|:---|
|package a.b.c.ch1;public class Add_One_To_Ten_2{public static void main(String args[]){		int sum=1;	for (int i=0; i<9; i++){System.out.println(" 1부터 "+(i+2)+"까지의 합 >>> :"+(sum+i+2)+"\n");sum=sum+i+2;	} } } |package a.b.c.ch1;public class Add_One_To_Ten_3{public static void main(String args[]){int i=2;int sum=1;while (i<=10){sum=sum+i;System.out.println("1부터 "+i+" 까지의 합 >>> : "+sum);i+=1;System.out.println("1부터 10까지의 합 >>> : "+sum);} }|  

break

    while반복문에서 loop를 멈출 때 사용

```
package a.b.c.ch1;

public class While_p_2{
	public static void main(String args[]){
		int i=2;
		int sum=1;

		while (i<=100){
			sum += i;
			boolean iBool= sum>55;
			if (iBool){
            	sum=sum-i;
				break;
			}
			else{
				System.out.println("1부터 "+i+" 까지의 합 >>> : "+sum);
			}
			i++;
		}
        System.out.print("1부터 10까지 의 합 >>> : "+sum);
		}
} 
```

do while

```
do : 실행하라
언제까지?
while 조건식이 될 때 까지
```

따라서 do 명령어는 반드시 최소 한 번은 실행됨

코드

```
public class day4Java{
	public static void main(String args[]) {
		
		int num = 1;
		int sum = 0;
		int number = 0;

		do{
			sum += num;
			num++;
			number += 1;
		}
		while (num <= 10);
		System.out.println("1부터 10 까지의 합은 " + sum + " 입니다.");
		System.out.println(number+"번째까지 수행");
	}
}
```

※ System.out.format("%d x %d = %2d ", i, j, i*j) <br>첫번째 정수형에 i를 대입, 두번째 정수형에 j를 대입, 마지막 두 자릿수 정수형에 i*j를 출력

**연산자**

|종류|연산자|설명|
|---|---|---|
산술연산자|+, -, *, /, %, <<, >>( 비트 )|사칙연산과 나머지 연산|
|관계(비교)연산자|>, <, >=, <=, ==, !=|크고 작음과 같고 다름을 비교|
|논리연산자|&&,, !, &, ^, ~ |그리고( AND ) 또는 ( OR )으로 조건을 연결
|대입연산자|=|우변의 값을 좌변에 저장
|기타연산자|( type ), ? :, instanceof|형변환연산자, 삼항연산자, instanceof|


연산자ement operators

    ++x		
    x 를 먼저 1 증가 시킨 후 그 값을 사용	
    --x	: x 를 먼저 1 감소 시킨 후 그 값을 사용	
    x++ : x 값를 먼저 사용한 후 1 증가 
    x--	: x 값를 먼저 사용한 후 1 감소 

삼항연산자_ternary operator

```
사용방법
조건식 ? 결과1 : 결과2

코드예시
int A=10;
int B=11;

char ch = ' ';

ch = (A>B) ? 'T' : 'F';

출력결과 : F
```

### 예외처리

예외처리를 위한 기본 구조

- try, catch

```
try {
    ...
} catch(예외1) {
    ...
} catch(예외2) {
    ...
...
}
```
```
int c;
try {
    c = 4 / 0;
} catch(ArithmeticException e) {
    c = -1;  // 예외가 발생하여 이 문장이 수행된다.
}
```
ArithmeticException이 발생하면 c에 -1을 대입하도록 예외를 처리한 것이다. ArithmeticException e에서 e는 ArithmeticException 클래스의 객체, 즉 오류 객체에 해당한다. 이 오류 객체를 통해 해당 예외 클래스의 메서드를 호출할수 있다.

- finally

    프로그램 수행 도중 예외가 발생하면 프로그램이 중지되거나 예외 처리에 의해 catch 구문이 실행된다. 하지만 어떤 예외가 발생하더라도 반드시 실행되어야하는 부분이 있어야 할 때 사용

```
public class Sample {
    public void shouldBeRun() {
        System.out.println("ok thanks.");
    }

    public static void main(String[] args) {
        Sample sample = new Sample();
        int c;
        try {
            c = 4 / 0;
        } catch (ArithmeticException e) {
            c = -1;
        } finally {
            sample.shouldBeRun();  // 예외에 상관없이 무조건 수행된다.
        }
    }
}
```

- throws

    예외처리를 다른 곳에 전가

```
throw new Exception("예외 발생!")
```

- Checked Exception Unchecked Exception

||Checked Exception|Unchecked Exception|
|---|---|---|
|처리여부|반드시 예외를 처리|명시적인 처리를 강제하지 않음|
|확인시점|컴파일 단계|실행단계|
|예외발생시 트랜젝션 처리|roll-back하지 않음|roll-back함|
|대표예외|Exeption의 상속받는 하위 클래스 중 Runtime Exception을 제외한 모든 예외 º IOEExcption, ºSQLException|RuntimeException 하위 예외 º NullPointerException ºIllegalArgumentException ºIndexOutOfBoundexeption ºSystemException

- 사용자 예외

    컴파일러가 체크하는 일반 예외로 선언하거나, 컴파일러가 체크하지 않는 실행 예외로 선언할 수 있다.

***일반예외***로 선언 시 : Exception 상속 <br>
***실행예외***로 선언 시 : RuntimeException 상속

    * 사용자 정의 예외 클래스 이름은 Exception으로 끝나는 것이 좋다
    * 사용자 정의 예외 클래스도 필드, 생성자, 메소드 선언을 포함할 수 있지만 대부분 생성자 선언만 포함
    * 생성자는 두 개를 선언하는 것이 일반적

예시) 잔고 부족 예외를 사용자 정의 예외 클래스로 선언

```
public class BalanceInsufficientException extends Exception {
    public BalanceInsufficientException() {}
    public BalanceInsufficientException(Stirng massage){
        super(message);
    }
}
```

### 상속

    자바에는 부모클래스(상위클래스)와 자식클래스(하위클래스)가 있다.
    자식 클래스의 경우 부모클래스를 선택해서 그 부모클래스의 멤버를 상속받아 그대로 쓸 수 있게 된다.

상속에 대하여
    
    1. 부모클래스의 private 접근 제한을 갖는 필드 및 메소드는 자식이 물려받을 수 없다.
    2. 서로 다른 패키지에 있다면 부모의 default는 접근 제한을 갖는 필드 및 메소드도 자식이 물려 받을 수 없다
    3. 이 외의 경우 모두 상속의 대상이 된다.

클래스 상속

상속 받고자 하는 자식 클래스 이름 앞에 extends 키워드를 붙이고 상속할 부모 클래스 이름을 적는다.

자바는 다중 상속을 허용하지 않는다. 하지만 여러 자식 클래스에게 상속이 가능하다.

extends 키워드 뒤에는 하나의 부모 클래스만 와야한다.

예시 
```
// 부모 클래스
public class Parent { ... };
// 부모 클래스를 상속받은 자식 클래스
public class Child extends Parent { ... };
```

인터페이스 상속

    인터페이스는 implements 키워드를 통해 상속받을 수 있다. 클래스 상속과 다르게 인터페이스 상속은 다중 상속이 가능하다. 따라서, 클래스와 다르게 implements 뒤에 여러개의 인터페이스가 올 수 있다.

예시

```public class Parent implements Interface1, Interface2, ... { ... }```
    

- 오버 라이딩과 오버 로딩

    매개변수의 개수 또는 타입이 다른 같은 이름을 가진 메서드를 정의하는 것을 오버로딩이라고 하고 상위 클래스에 정의된 메서드와 같은 메서드를 하위 클래스에 정의하는 것을 오버라이딩이라고 한다

    오버라이딩은 메서드의 내용만 새로 작성하는 것이므로 메서드의 선언부는 상위 클래스의 메서드와 완전히 일치해야한다.

    즉, 반환형, 메서드명, 매개변수 개수, 매개변수 자료형이 반드시 같아야 한다


- 오버라이딩의 조건

    오버라이딩은 부모 클래스의 메소드를 재정의하는 것이므로, 자식 클래스에서는 오버라이딩하고자 하는 메소드의 이름, 매개변수, 리턴 값이 모두 같아야 한다. 코드를 통해 좀 더 자세히 알아보자.

예시

```
public class OverridingTest {

	public static void main(String[] args) {
		Person person = new Person();
		Child child = new Child();
		Senior senior = new Senior();
		
		person.cry();
		child.cry();
		senior.cry();
	}
}

class Person {
	void cry() {
		System.out.println("흑흑");
	}
}

class Child extends Person {
	@Override
	protected void cry() {
		System.out.println("잉잉");
	}
}

class Senior extends Person {
	@Override
	public void cry() {
		System.out.println("훌쩍훌쩍");
	}
}
```

결과

    흑흑
    잉잉
    훌쩍훌쩍

- 오버로딩의 조건

    메소드의 이름이 같고 개수나 타입이 달라야한다. 주의할 점은 리턴 값만 다른 것은 오버로딩 할 수 없다는 것이다.

예시

```
class OverloadingTest {

	public static void main(String[] args) {
		OverloadingMethods om = new OverloadingMethods();

		om.print();
		System.out.println(om.print(3));
		om.print("Hello!");
		System.out.println(om.print(4, 5));
	}
}

class OverloadingMethods {
	public void print() {
		System.out.println("오버로딩1");
	}

	String print(Integer a) {
		System.out.println("오버로딩2");
		return a.toString();
	}

	void print(String a) {
		System.out.println("오버로딩3");
		System.out.println(a);
	}

	String print(Integer a, Integer b) {
		System.out.println("오버로딩4");
		return a.toString() + b.toString();
	}

}
```

결과

    오버로딩1
    오버로딩2
    3
    오버로딩3
    Hello!
    오버로딩4
    45


오버로딩을 사용하는 이유





1. 같은 기능을 하는 메소드를 하나의 이름으로 사용할 수 있다.



우리가 흔히 콘솔창에 텍스트를 출력할 때 사용하는 println라는 메소드를 대표적인 예로 들어볼 수 있다. 실은 이 함수가 오버로딩의 결정체이다. 우리는 println의 인자 값으로 int, double, boolean, String 등의 아주 다양한 타입의 매개변수들을 집어넣어도 우리는 그 함수들이 어떻게 실행되지는 모르지만 콘솔창에 아주 잘 출력해주는 것을 볼 수 있다.



이렇게 '출력하다.'라는 같은 기능을 가진 메소드들를 println이라는 하나의 이름으로 정의가 가능한 것이다.



2. 메소드의 이름을 절약할 수 있다.



이 위에서 예로 들었던 println을 생각해보자. 이 메소드를 매개변수의 종류에 따라서 다르게 지정한다고 생각해보자. printlnInt, printlnDouble, printlnBoolean 등 수많은 메소드들의 이름을 정해줘야 할 것이다. 이는 프로그래머의 입장에서는 메소드의 네이밍에 고민을 가중시킨다. 그리고 이런 이름들은 다른 곳에 사용할 가능성도 생기게 된다.



***오버로딩 - 기존에 없는 새로운 메소드를 추가하는 것***

***오버라이딩 - 상속받은 메소드를 재정의 하는 것***



 구분| Overriding|Overloading|
|---|---|---|
|접근 제어자|부모 클래스의 메소드의 접근 제어자보다 더 넓은 범위의 접근 제어자를 자식 클래스의 메소드에서 설정할 수 있다.|모든 접근 제어자를 사용할 수 있다.|
|리턴형|동일해야 한다.|달라도 된다.|
 |메소드명|동일해야 한다.|동일해야 한다.|
 |매개변수|동일해야 한다.| 달라야만 한다.|
|적용 범위|상속관계에서 적용된다.|같은 클래스 내에서 적용된다.|

### 추상클래스

    A클래스, B클래스, C클래스가 있다고 치자 여기서 각 클래스 안에는 각자의 필드와 메서드가 있을것이다. 추상클래스는 A클래스, B클래스, C클래스들 간에 비슷한 필드와 메서드를 공통적으로 추출해 만들어진 클래스다.

 - 추상클래스 왜 사용할까
 1. 공통된 필드와 메서드를 통일할 목적
 2. 실체클래스 구현시, 시간절약
 3. 규격에 맞는 실체클래스 구현

 - 추상클래스 어떻게 쓰나

     클래스 앞에 abstract 키워드를 붙이면 추상클래스이다

     

     ```
     public abstract class 클래스명{

        //필드

        //생성자

        //메서드

        //추상메서드

        

        }
    ```

    추상메서드도 메서드 리턴타입 앞에 abstract 키워드를 붙이면 된다.

    ```[ public | protected ] abstract 리턴타입 메소드명(매개변수1, 매개변수2, ... );```

    예시
```   
package ABSTRACTCLASS;

public abstract class Animal {
	public String kind;
	
	public void breath(){
		System.out.println("숨 쉰다.");
	}
	//추상메서드
	public abstract void sound();//구체적인 구현부는 없음!
}
```

```
package ABSTRACTCLASS;

public class Dog extends Animal{
	
	public Dog(){
		this.kind = "포유류";
	}
	
	@Override
	public void sound() {
		// TODO Auto-generated method stub
		System.out.println("왈왈!");
	}

}
```

```
package ABSTRACTCLASS;

public class Cat extends Animal{

	public Cat(){
		this.kind = "포유류";
	}
	@Override
	public void sound() {
		// TODO Auto-generated method stub
		System.out.println("야~옹!");
	}

}
```

```
package ABSTRACTCLASS;

public class AnimalExample {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Dog dog = new Dog();
		Cat cat = new Cat();
		
		dog.sound();
		cat.sound();
		
		Animal animal = null;
		
		animal = new Dog(); //자동 타입변환
		animal.sound(); //Dog에 구현된 Sound()메서드 실행
		
		animal = new Cat(); //자동 타입변환
		animal.sound(); //Cat에 구현된 Sound()메서드 실행
		
		
		animalSound(new Dog()); //자동 타입변환 (매개변수도 가능)
		animalSound(new Cat()); //자동 타입변환 (매개변수도 가능)
	}
	//자동 타입변환 : 추상클래스 타입 변수는 추상클래스를 상속받은 실체클래스의 타입으로 자동 타입변환이 된다. 
	private static void animalSound(Animal animal) {
		animal.sound();
	}
}
```


### 인터페이스

    극단적으로 동일한 목적 하에 동일한 기능을 수행하게끔 강제하는 것이 바로 인터페이스의 역할이자 개념 == 자바의 다형성을 극대화하여 개발코드 수정을 줄이고 프로그램 유지보수성을 높이기 위해 인터페이스를 사용


- 인터페이스 형식

```
접근제어자 interface 인터페이스이름 {

    public static final 타입 상수이름 = 값;

    ...

    public abstract 메소드이름(매개변수목록);

    ...

}
```
예시
```
interface Animal { public abstract void cry(); }

 

class Cat implements Animal {

    public void cry() {

        System.out.println("냐옹냐옹!");

    }

}

 

class Dog implements Animal {

    public void cry() {

        System.out.println("멍멍!");

    }

}

 

public class Polymorphism03 {

    public static void main(String[] args) {

        Cat c = new Cat();

        Dog d = new Dog();

 

        c.cry();

        d.cry();

    }

}
```

결과 

    냐옹냐옹!
    멍멍!


---끝---