-- 1. PC의 평균 속도를 구하라.
SELECT  AVG(speed)
FROM PC;

-- 2. 각 제조업체별로 laptop의 평균 화면 크기를 구하라.
SELECT  maker
       ,AVG(screen)
FROM Product
    INNER JOIN Laptop
    ON Product.model=Laptop.model
GROUP BY  maker;

-- 3. 속도가 500을 넘는 PC를 속도별로 평균 가격을 구하라.
SELECT  speed
       ,AVG(price)
FROM PC
GROUP BY  speed
    HAVING speed > 500;

