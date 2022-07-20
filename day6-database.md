# day6-Database
## 목록
- Database 기본문법
- ERP 표기 및 읽는 방법

### **Database기본문법** 

- SELECT문

기본 구조
~~~
SELECT 필드이름
FROM 테이블
~~~

여러 필드를 조회하는 경우
```
SELECT 필드이름1, 필드이름2
FROM 테이블
```

모든 필드를 조회하는 경우
```
SELECT *
FROM 테이블

# *(애스터리스크)는 모든 열을 의미한다.
```

중복된 데이터를 없애고 조회하는 경우
```
SELECT DISTINCT 필드이름
FORM 테이블
```

조건식을 적용하는 경우
```
SELECT *
FORM 테이블
WHERE 필드이름=0

# WHERE은 검색 조건을 지정
```
예제 이미지

![alt](https://user-images.githubusercontent.com/95902842/179871885-1b4a31b6-7dba-4d76-b862-5e38f54e09ca.png)

여러 조건식을 적용하는 경우
```
SELECT *
FROM 테이블
WHERE 필드이름1=0
AND 필드이름2=0
OR 필드이름3=0
```

조건식의 종류
```
WHERE 필드이름 BETWEEN 0 AND 100
WHERE 필드이름 AND BETWEEN 0 AND 100

WHERE 필드이름 IN (0,10, 100)
WHERE 필드이름 NOT IN (0,10, 100)

WHERE 필드이름 IS NULL
WHERE 필드이름 NOT IS NULL

WHERE 필드이름 LIKE '홈__'
WHERE 필드이름 NOT LIKE '홈__'

WHERE 필드이름 LIKE '홈%'
WHERE 필드이름 NOT LIKE '홈%'
# 필드이름에 해당하는 열에서 홈으로 시작하는 내용이 (있다면/없다면) SELECT 한다 (전방매치)
# _나 %를 검색하고자 할 경우 앞에 이스케이프를 시키면 됨
# 예시 :(\_) OR (\%)
```

특정 필드 기준으로 정렬하는 경우
```
SELECT 필드이름
FORM 테이블
ORDER BY 필드이름
```

정렬 기준이 여러개인 경우
```
SELECT 필드이름
FORM 테이블
ORDER BY 필드이름1, 필드이름2 DESE, 필드이름 3 ASC

# ORDER BY는 지정된 컬럼을 기준으로 정렬 할 수 있으며, ASC는 오름차순, DESC는 내림차순입니다.
```
내부 조인한 결과를 출력하는 경우
```
SELECT 테이블1.필드이름
FORM 테이블1, 테이블2
WHERE 테이블1.필드이름 = 테이블2.필드이름
```

별칭을 이용해 코드 간소화하는 경우(= 위 코드와 동일)

```
SELECT A.필드이름
FROM 테이블1 A, 테이블2 B
WHERE A.필드이름 = B.필드이름
```

외부조인한 결과를 출력하는 경우

``` 
SELECT A필드이름
FORM 테이블1 A, 테이블2 B
WHERE A.필드이름 = B.필드이름(+)
```

집합연산을 이용해 결과를 출력하는경우
```
SELECT 필드이름
FORM 테이블1
UNION (또는 UNION ALL, MINUS, INTERSET)
SELECT 필드이름
FOMR 테이블2
```

서브쿼리(중첩 쿼리)를 실행하는 경우_서브 쿼리 결과가 하나일 때
```
SELECT 필드이름1
FORM 테이블
WHERE 테이블.필드이름2 IN(
    SELECT 필드이름2
    FORM 테이블
    WHERE 조건문
)

# IN 외에 ANY, ALL, EXIST도 쓸 수 있음
```

-  INSERT 문

Create
```
INSERT INTO 테이블(필드이름1, 필드이름2)
VALUES(값1, 값2)

# 예시

CREATE TABLE books
    (id INTEGER PRIMARY KEY,
    title TEXT, 
    writer TEXT,
    released_year INTEGER);
```

- UPDATE문

Update
```
UPDATE 테이블 SET 필드이름1=값1, 필드이름2=값2
WHERE 조건문
```

- DELETE문

Delete
```
DELETE FORM 테이블
WHERE 조건문
```

테이블의 컬럼삭제
```
ALTER TEBLE 테이블이름.DROP COLUMN 컬럼명;
DESC 테이블이름;
```


<실습 구문 DB>

    show databases; => 목록 출력
    show tables; => 현재 데이터베이스 테이블 출력
    describe 테이블 이름; => 테이블 구조 보기

### **ERP 표기 및 읽는 방법** 

데이터 모델링 분야에서 개체 관계 모델(ERM)이라고 하고
ERD(Entity Relationship Diagram)는 해당 개체 관계도를 그림으로 그려내어 표현한 것

ER을 그리라는 말은 관계를 그림으로 나타내어라라는 말과 동일


ERM의 기본요소 

    Entity(정의가 가능한 사물 또는 개념) = table이라는 구성요소
    Atrribute = Entity와 Entity의 관계성
    Relationship = 1:1, 1:N, N:N 관계
    Identifying Relationship = 식별관계 Identifying = FK || Non-Identifying = PK
    Mandatory = 필수 존재여부, NULL인지
    Cascade = 연쇄 - 삭제 혹은 수정시, 함께 삭제, 수정이 되는지

ERD 표기법

<img src="https://user-images.githubusercontent.com/95902842/179875795-f6dc430f-a262-4563-aab2-000ff83b751c.png"/>

 
비식별관계의 경우 점선으로 식별관계의 경우 실선으로 표기된다.

pr (PRIMARY KEY)
└ 중복이 없고 null 값이 없는 유일한 값에 지정하는 키
└ 보통 대부분의 ERD다이어그램 툴에서 열쇠로 표시

fk (FORIEIGN KEY)
└ 외래키역시 열쇠 아이콘으로 표시하나 색깔을 다르게 표시하는 편

두 개체의 관계

<img src="https://user-images.githubusercontent.com/95902842/179876803-26513610-a191-40d2-bcd8-cb5e2c8420cb.png"/>



# ***보내주신 참고 자료 정리 및 공부***

ER 모델링 규칙

    엔티티
    모델에서 엔티티를 나타내려면 
    - 단수형 고유 엔티티 이름
    - 엔티티 이름은 대문자
    - 모서리가 둥근 상자
    - 선택 사항인 동의어 이름은 괄호안에 대문자로 표기된다

    속성
    모델에서 속성을 나타내려면 
    - 소문자의 단수형 이름
    - 필수 속성에는 *태그
    - 선택적 속성에는 o 태그

    관계 [아래 표 참고]

|기호|설명|
|---|---|
|점선|"maybe"를 나타내는 선택적 요소|
|실선|"must be"를 나타내는 필수 요소|
|까치발|"one or more"를 나타내는 정도 요소|
|일방선|"one and only one"을 나타내는 정도 요소|

여러 테이블 연관 짓기

테이블의 각 데이터 행은 Primary key를 통해 고유하게 식별
Foregin key를 사용하여 여러 테이블의 데이터를 논리적으로 연관시킬 수 있음.

Primary 와 Foregin에 대한 지침

    PRIMARY key에서 중복 값을 사용할 수 없다
    PRIMARY Key는 일반적으로 변경할 수 없다
    FOREIGN key는 데이터 값을 기반으로 하며 수전히 논리적 포인터이다
    FOREIGN key 값은 기존 Primary key 값이나 Unique key 값과 일치해야하며 그렇지 않은 경우 null 이어야 함
    Foregin key는 Primary key나 Unique Key열을 참조해야 함

SQL은 모든 프로그램 및 유저가 오라클 데이터베이스의 데이터에 액세스 하기 위해 사용하는 일련의 명령문입니다. 

SQL에서는 다양한 명령문을 제공

- 데이터 Query
- 테이블에서 행 삽입, 갱신 및 삭제
- 객체 생성, 대체, 변경 및 삭제
- 데이터베이스 및 해당 객체에 대한 액세스 제어
- 데이터베이스 일관성 및 무결성 보장

DML: 데이터 조작어_각데이터 베이스에서 데이터를 검색하고, 입력, 변경

    SELECT, INSERT, UPDATE, DELETE, MERGE

DDL: 데이터 정의어_데이터 구조를 설정, 변경, 제거

    CREATE, ALTER, DROP, RENAME, TRUNCATE, COMMENT

DCL: 데이터 제어어_구조에 대한 액세스 권한을 부여하거나 제거합니다

    GRANT, REVOKE

트랜잭션 제어어_DML문으로 인한 변경 사항을 관리, 데이터의 변경 사항은 논리적 트랙잭션으로 함께 그룹화

    COMMENT, ROLLBACK, SAVEPOINT

SELECT문의 기능
1. 프로젝션 : Query에 의해 반환되는 테이블의 열을 선택합니다. 필요한 수만큼 열을 선택할 수 있습니다.
2. 선택 : Query에 의해 반환되는 테이블의 행을 선택합니다. 다양한 조건을 사용하여 검색되는 행을 제한할 수 있습니다.
3. 조인 : 두 테이블 사이에 링크를 지정하여 서로 다른 테이블에 저장된 데이터를 함께 가져옵니다.

SELECT는 표시할 열을 식별 , FROM은 이러한 열을 포함한 테이블을 식별

SQL 작성
 - SQL문은 대소문자를 구분하지 않음
 - SQL문은 한 줄 또는 여러 줄에 입력할 수 있음
 - 키워드는 약어로 표기하거나 여러줄에 걸쳐 입력할 수 없음
 - 절은 대개 별도의 줄에 입력
 - 가독성을 높이기 위해 들여쓰기를 사용
 - SQL Developer에서 SQL문은 ;으로 끝날 수가 있음

 산술 연산자 사용 - 산술 연산자는 from 절을 제외한 모든 절에 사용이 가능

 연결 연산자 (||) = 열이나 문자열을 다른 열에 연결, 결과 열로 문자 표현식을 작성

예시 

```
SELECT last_name || job_id AS "Employees"
FROM employees;
```

DESCRIBE 명령어 : 테이블의 구조에 대한 정보를 표시

표현식 연산자 우선 순위 규칙

|연산자|의미|
|--|---|
|1|산술연산자|
|2|연결연산자|
|3|비교조건|
|4|IS [NOT] NULL, LIKE, [NOT] IN|
|5|[NOT] BETWEEN|
|6|같지 않음|
|7|NOT 논리 조건|
|8|AND 논리 조건|
|9|OR 논리 조건|

그룹함수란? 행 집합에 대해 실행되어 그룹당 하나의 결과를 산출하는 것

그룹 함수의 유형
- AVG = n의 평균값, null값은 무시
- COUNT = 행의 개수. 여기서 expr은 null이 아닌 값을 평가
- MAX = expr의 최대값, null값은 무시
- MIN = expr의 최소값, null값은 무시
- STDDEV = n의 표준편차, null값은 무시
- SUM = n의 합계 값, null값은 무시
- VARIANCE = n의 분산, null값은 무시

# 여러 테이블의 데이터 표시

모호한 열 이름 한정

테이블 접두어를 사용하여 여러 테이블에 있는 열 이름을 한정<br>
테이블 접두어를 사용하여 성능을 향상<br>
전체 테이블 이름 접두어 대신 테이블 alias를 사용합니다.<br>
테이블 alias로 테이블에 짧은 이름을 지정합니다.<br>
열 alias를 사용하여 이름은 같지만 서로 다른 테이블에 상주하는 열을 구분합니다.<br>

Natural Join 생성

NATURAL JOIN절은 두 테이블에서 이름이 같은 모든 열을 기반으로 합니다.<br>
이절은 두 테이블에서 대응되는 모든 열의 값이 동일한 행을 선택합니다.<br>
동일한 이름을 가진 열이 서로 다른 데이터 유형을 가지면 오류는 반환됩니다.<br>

USING절을 사용하여 조인생성

여러 열이 이름은 같지만 데이터 유형이 일치하지 않을 경우 USIN절을 사용하여 equijoin에 사용될 열을 지정하도록 natural join을 적용할 수 있습니다.<br>
USIN절을 사용하면 두 개 이상의 열이 일치하는 경우 하나의 열만 일치하도록 할 수 있습니다.<br>

UATURAL JOIN과 USING절은 상호 배타적입니다.<br>

## subquery

테이블 자체의 데이터에 종속되는 조건을 사용하여 테이블에서 행을 선택해야하는 경우 유용

    WHERE절
    HAVING절
    FORM절

다중행 : 두 개 이상의 행을 반환
|연산자|의미|
|---|---|
|IN|리스트의 임의 멤버와 같음|
|ANY|기호 연산자가 앞에 있어야하며 값 하나의 리스트의 값 또는 QUERY에서 반환된 값 각각 비교, QUERY에서 반환된 행이 없으면 FALSE로 평가
|ALL|기호 연산자가 앞에 있어야하며 값 하나를 리스트의 모든 값 또는 Query에서 반환된 모든 값과 비교, QUERYDPTJ 에서 반환된 행이 없으면 TRUE로 평가