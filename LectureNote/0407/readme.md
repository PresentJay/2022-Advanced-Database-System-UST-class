# E/R Data Model

## 데이터베이스 모델링 개요

- 데이터베이스 모델링과 구현 과정

    1. 착상 (머릿속으로 생각하기)
    2. Entity-Relationship Model 설계 (개념적 설계)
    3. Relation Schema (구현 설계)
    4. RDBMS
    

- 데이터베이스 설계 시 가장 먼저 해야 할 일
    - 데이터베이스가 어떤 정보를 다루어야 하는지
    - 정보 요소들 간의 관계성은 어떻게 되는지에 대해 분석

- Data Model
    - Data 사이 관계를 기술하는 개념적 도구
    - Database의 논리적 구조

- Entity-Relationship Model
    - `Diagram 표기법`으로 Graphical하게 모델을 표현
        - Entity: `사각형`
            - `유사한 엔티티`(객체)들의 집합
            - OOP 관점에서 `Class`와 유사 (But 구조만 가져가고 연산은 X)
        - Attribute: `원형`
            - `엔티티들의 특성, 속성`
            - 문자열, 상수, 실수 ... Atomic Value
        - Relationship: `다이아몬드`
            - 둘 이상 엔티티 집합들간의 연결
    - `E/R 관계성`
        - Many to Many
        - Many to One (One to Many)
        - One to One
    - `E/R Degree`
        - 하나의 관계로 연결된 Entity의 개수
        - 가장 흔한 차수는 binary (2)
        - Multiway Relationship: 3차 이상
 
##

    [Example]. Studio가 제작하는 Movie에 출연하는 Star와의 계약

![](images/Multi-Relationship-ER-Example.jpeg)

- ##
    - Relationship Role
        - 관계 타입의 의미를 명확하게 하기 위해 사용
        - 특히, 한 Entity 집합이 한 Relationship에서 두 번 이상 사용 가능
        - Relation 타입의 간선 위에 표시

![](images/Relationship-Role-Example.png)


## 설계 원칙

- Attribute가 되는 바람직한 조건 (해당 조건을 모두 만족하면, Entity를 Attribute로 대치 가능)
    - E(Entity)와 관련된 R(Relationship)은 모두 E로부터 One to Many
        - Many to Many일 때 Attribute일 경우, 다중값 발생
    - E에 있는 모든 Attribute는 상호 독립적
        - 정보의 중복 배제
    - E가 두 번 이상 참가하는 R은 없음
        - Attribute로 할 경우, 관계성 정보가 유실
    
![](images/Attribute-Condition.jpeg)

## Constraint Modeling

- `Constraint`
    - `Key`: Entity를 유일하게 구별할 수 있는 Attribute (여러 개도 가능)
        - 표현 시, Attribute 이름에 밑줄
        - E/R Model에서 두 개 이상의 Key를 표기하는 방법은 제공X (주석으로 처리 등)
    - `Singlue-value Constraint`: 많아야 하나의 값만 가질 수 있는 제약조건
    - `Referential Integrity Constraint`: 참조무결성 제약조건
        - 어떤 다른 객체에 의해 참조되는 값이 반드시 Database에 존재해야 한다.
        - ex. 영화는 무조건 하나의 스튜디오에 꼭 소유되어야 한다.
        - 둥근 화살표 사용
        - 참조 무결성이 지켜지도록 하기 위한 방법
            - 참조되는 객체의 삭제를 금지
            - 참조되는 객체가 삭제되면, 이 객체를 참조하고 있던 모든 객체도 같이 삭제
    - `Domain Constraint`: Attribute의 값이 특정 값의 집합에 속해야 한다.
        - ex. length는 0~240 사이여야 한다.
        - ex2. length는 integer type이다.
        - E/R Model에서 도메인제약을 위한 특별한 표기법은 없다. (Attribute 아래에 따로 표시)
    - `General Constraint`: 임의의 무결성 assertion
        - ex. 한 편의 영화에는 스타가 10명 이하만 나열되어야 한다.
        - edge에 숫자를 기입하는 방식?
            - 화살표는 <= 1 ([화살표: 최대 1개] 연결 or 비연결)
            - 둥근 화살표는 = 1 ([화살표: 최대 1개] [둥근: 참조무결성] 무조건 연결)

## 관계 모델의 기초

- `Relation`: 2차원 Table (각 요소들이 원자적 값을 가지는 Tuple들의 집합)
    - `Column`: 릴레이션의 각 열
    - `Attribute`:  일반적으로 Attribute는 Column의 Header(이름)를 말함
        - Attribute의 순서가 변경되어도 Relation은 동일하게 취급
    - `Tuple`: 릴레이션에서 각 애트리뷰트에 대한 하나의 요소들을 순서대로 포함 (헤더부분 제외)
        - Tuple의 순서가 변경되어도 Relation은 동일하게 취급
- `Schema`: Relation의 Attribute 집합, RDB의 설계는 하나 이상의 Relation Schema로 구성
    - Relation Schema들의 집합을 RDB Schema 또는 DB Schema라고 부름
- `Domain`: Relation의 각 Attribute에 연관된 Type (ex. string 등)
    - Relation Model에서는 Attribute의 값이 Record구조, 집합, 리스트, 배열 등과 같이 더 작은 요소로 분해될 수 있는 타입을 허용하지 않음 (튜플의 각 요소는 원자적)

## ER에서 Relation 설계로의 변환

1. `Design Phase`
    - 어떤 정보가 저장될 것인가?
    - 정보 요소들이 다른 정보와 어떤 방식으로 연결될 것인가?
    - 어떤 제약을 둘 것인가?
2. `Implementation Phase`
    - `Design Phase` 이후 실제 DBMS를 이용한 구현
    - 관계 모델로 변환 (Relation 개념만 이용)
3. `ER 설계를 RDB Schema로 변경`
    - 각 Entity 집합을 동일한 Attribute 집합을 갖는 Relation으로 변경
    - 관계성이 연결되어 있는 엔티티 집합들에 대한 Key들을 Attribute로 갖는 Relation으로 변환
    - 특별한 경우 고려
        - `Is a` 관계성과 서브클래스들은 주의해서 사용
        - 경우에 따라 Relation들을 합치는 것이 좋음
            - Entity 집합에 대한 Relation과 다대일 관계성을 지니는 Relation을 합칠 수 있음
4. `Entity` 집합을 `Relation`으로 변환
    - Weak Entity 집합이 아닌 Entity 집합에 대하여, 동일한 Attribute들을 갖는 같은 이름의 Relation을 생성
5. `관계성`을 `Relation`으로 변환
    - `관계성 R`에 연결된 Entity 집합들의 Key Attribute들을 R에 대한 Relation의 Attribute들로 생성
    - `관계성`이 `Attribute`를 가지면, 이 Attribute도 Relation R의 Attribute로 생성
    - 같은 이름을 갖는 Attribute가 두 번 이상 나타날 경우, 중복을 피하기 위해 Attribute의 이름을 변경
6. `Relation`의 결합: 어떤 관계성에 대해서는 테이블을 생성할 필요가 없음
    - 다대일 관계성의 경우
      - S(S_key, s2), T(T_key, t2), R(S_key, T_key, r1) -> S(S_key,s2, r1, T_key), T(T_key, t2)
        - R에 대한 테이블을 생성하는 대신 S에 R의 모든 Attribute와 T key를 포함
    - 일대일 관계성의 경우
      - R Table을 생략하는 경우 양쪽 중 하나로 편입
      - R Table + 다른 쪽 테이블을 생성하는 대신 모든 것을 합쳐서 표현 가능
    - 다대다 관계성의 경우 중복발생때문에 좋지 않은 설계임

## 보이스-코드 정규형 (BCNF)

- `Anomaly` (이상)
  - Relation의 설계를 잘못하였을 때 발생하는 문제
- `Redundancy` (중복성)
  - 다중값(multi-valued) 관계성으로 인한 중복성
    - Attribute 하나를 다양한 값으로 표현하기 위해, 다른 Attribute값들이 중복 생성되는 경우