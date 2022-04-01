# 부질의

## SQL Join Expressions

- 조인 수식은 그 자체가 질의일 수도 있고, 또는 부질의로도 사용될 수 있다.
- `CROSS JOIN` = `Cartesian Product`
- `INNER JOIN` ... ON
- 외부조인 (outerjoin)
    - 허상 튜플을 결과에 추가
        - 허상 튜플 (dangling tuple): 조인되지 못한 튜플
        - 조인되지 않은 경우, Attribute들을 NULL 값으로 처리
    - `LEFT` | `RIGHT`


# 데이터베이스 변경 (modification)

# 릴레이션 전체를 다루는 연산

## 중복 제거

- SQL System은 일반적으로 중복을 제거하지 않는다.
- 중복 제거 키워드: DISTINCT
- 중복 제거 비용은 일반적으로 비용이 큼 (Relation sorting 등을 이용) --> 적용 시 신중할 것
- 합집합, 교집합, 차집합 연산들은 기본적으로 중복을 제거함
    - 방지하려면 키워드 ALL을 추가하면 됨 (UNION ALL, INTERSECT ALL, EXCEPT ALL)
    
## 집단값 (aggregation)

- 집단값 연산자 : 집단화 값을 생성하는 다섯 개의 연산자
    - `COUNT`: 값들의 개수
    - `SUM`: 한 열에 있는 값들의 합
    - `AVG`: 한 열에 있는 값들의 평균
    - `MIN`: 한 열에 있는 값 중 최소값
    - `MAX`: 한 열에 있는 값 중 최대값

## 그룹화 (grouping)

- 어떤 열의 값에 따라 tuple들을 그룹화
- GROUP BY 


# 색인

- 특정 Attribute에 대한 색인