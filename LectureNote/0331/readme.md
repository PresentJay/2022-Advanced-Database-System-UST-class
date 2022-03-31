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
- 부질의의 결과가 단일 상수일 때, Where에서 다른 Attribute와 직접 비교 가능
- 두 개의 부질의가 하나의 질의를 형성하려면, union, intersect, except 사용
- Scala 값을 생성하는 부질의
    - Select-From-Where에 의해 하나의 값만 생성될 때 = 상수