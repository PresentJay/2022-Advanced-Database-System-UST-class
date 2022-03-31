    learn_1.sql

# 둘 이상의 릴레이션을 포함하는 질의

## 카티션 프로덕트 (Cartesian Product)

- From절에 각 릴레이션을 나열

## Attribute name의 모호성 제거

- 여러 릴레이션들을 포함하는 질의에서 둘 이상의 Attribute가 같은 이름을 가질 수 있음
- R.A의 기호를 사용 (Relation.Attribute)

***

    learn_2.sql

# 부질의 (Subquery)

- `다른 질의의 일부분으로 사용된 질의`
- `Relation을 결과로 생성하는 수식`
    - Where, From에서 사용
- 두 개의 부질의가 하나의 질의를 형성하려면, union, intersect, except 사용
## Scala 값을 생성하는 부질의

- Select-From-Where에 의해 하나의 값만 생성될 때 = 상수
- 부질의의 결과가 단일 상수일 때, Where에서 다른 Attribute와 직접 비교 가능

## Relation이 비교 대상이 되는 조건

- Subquery 결과가 조건에 사용
- Boolean 값을 결과로 생성하는 연산자 ([R]: Relation, [s]: scala)
    - EXISTS [R]
        - [R]에 tuple이 하나라도 존재하면(iff) True
    - [s] IN [R]
        - [s]가 [R]에 있는 값 중 어느 하나와 일치하면(iff) True
    - [s] > ALL [R]
        - [s]가 단항 릴레이션(unary relation) [R]의 모든 값보다 크면(iff) True
        - \> 대신 다른 비교 연산자 사용 가능
    - [s] > ANY [R]
        - [s]가 단항 릴레이션 [R]의 값 중 적어도 하나보다 크면(iff) True
        - \> 대신 다른 비교 연산자 사용 가능
    - 모든 연산자 앞에 NOT 사용 가능 (부정)
- Tuple이 비교 대상이 되는 조건
    - SQL에서 하나의 Tuple은 Scala 값들의 리스트로 표현
        - > Ex) (123, 'foo'), (name, address, networth)
    - Tuple [t]와 Relation [R]이 같은 요소들로 구성되어 있으면 [t]와 [R]은 비교 가능
    - [R]의 원소와 [t]를 비교할 때, [R]의 Attribute에 대한 표준 순서에 따라 Attribute들을 비교

## 상호 관련된 부질의 (correlated Subquery)

- 부질의의 외부에서 선언된 tuple ?

