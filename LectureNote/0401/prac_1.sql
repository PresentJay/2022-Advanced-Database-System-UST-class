CREATE DATABASE COMPUTER;

USE COMPUTER;

show tables;

-- Product 릴레이션은 여러 제품들의 제조업체, 모델 번호 및 제품 타입(PC, 랩탑, 혹은 프린터)을 가지고 있다.
-- 편의상 모델 번호는 모든 제조업체와 상품 타입에 고유하다고 가정하자.
CREATE TABLE Product (
  maker CHAR(1),
  model CHAR(4) PRIMARY KEY,
  type VARCHAR(20)
);

-- PC 릴레이션은 각 모델에 대해 모델 번호, 속도(프로세서의 속도를 MHz 단위로 표시),
-- 메모리의 크기(메가바이트로 표시),하드 디스크의 용량(기가바이트로 표시),
-- 이동식 디스크의 속도 및 종류(CD 또는 DVD), 그리고 가격을 가지고 있다.
CREATE TABLE PC (
  model CHAR(4) PRIMARY KEY,
  speed INT,
  ram INT,
  hd INT,
  cd VARCHAR(20),
  price INT
);

-- Laptop 릴레이션은 이동식 디스크에 대한 정보 대신 화면 크기(인치로 표시)가 기록된다는 점을 빼고는 거의 유사하다.
CREATE TABLE Laptop (
  model CHAR(4) PRIMARY KEY,
  speed INT,
  ram INT,
  hd INT,
  screen DECIMAL(3,1),
  price INT
);

-- Printer 릴레이션은 각 프린터 모델에 대해 해당 프린터가 컬러 출력이 가능한지 여부(참 또는 거짓)와 출력 방식(레이저, 잉크젯 등), 그리고 가격을 기록한다.
CREATE TABLE Printer (
  model CHAR(4) PRIMARY KEY,
  color BOOLEAN,
  type VARCHAR(20),
  price INT
);

-- input data
INSERT INTO Product VALUES
('A', '1001', 'pc'),
('A', '1002', 'pc'),
('A', '1003', 'pc'),
('A', '2004', 'laptop'),
('A', '2005', 'laptop'),
('A', '2006', 'laptop'),
('B', '1004', 'pc'),
('B', '1005', 'pc'),
('B', '1006', 'pc'),
('B', '2001', 'laptop'),
('B', '2002', 'laptop'),
('B', '2003', 'laptop'),
('C', '1007', 'pc'),
('C', '1008', 'pc'),
('C', '2008', 'laptop'),
('C', '2009', 'laptop'),
('C', '3002', 'printer'),
('C', '3003', 'printer'),
('C', '3006', 'printer'),
('D', '1009', 'pc'),
('D', '1010', 'pc'),
('D', '1011', 'pc'),
('D', '2007', 'laptop'),
('E', '1012', 'pc'),
('E', '1013', 'pc'),
('E', '2010', 'laptop'),
('F', '3001', 'printer'),
('F', '3004', 'printer'),
('G', '3005', 'printer'),
('H', '3007', 'printer');

INSERT INTO PC VALUES
('1001', 700, 64, 10, '48xCD', 799),
('1002', 1500, 128, 60, '12xDVD', 2499),
('1003', 866, 128, 20, '8xDVD', 1999),
('1004', 866, 64, 10, '12xDVD', 999),
('1005', 1000, 128, 20, '12xDVD', 1499),
('1006', 1300, 256, 40, '16xDVD', 2199),
('1007', 1400, 128, 80, '12xDVD', 2299),
('1008', 700, 64, 30, '24xCD', 999),
('1009', 1200, 128, 80, '16xDVD', 1699),
('1010', 750, 64, 30, '40xCD', 699),
('1011', 1100, 128, 60, '16xDVD', 1299),
('1012', 350, 64, 7, '48xCD', 799),
('1013', 733, 256, 60, '12xDVD', 2499);

INSERT INTO Laptop VALUES
('2001', 700, 63, 5, 12.1, 1448),
('2002', 800, 96, 10, 15.1, 2584),
('2003', 850, 64, 10, 15.1, 2738),
('2004', 550, 32, 5, 12.1, 999),
('2005', 600, 64, 6, 12.1, 2399),
('2006', 800, 96, 20, 15.7, 2999),
('2007', 850, 128, 20, 15.0, 3099),
('2008', 650, 64, 10, 12.1, 1249),
('2009', 750, 256, 20, 15.1, 2599),
('2010', 366, 64, 10, 12.1, 1499);

INSERT INTO Printer VALUES
('3001', true, 'ink-jet', 231),
('3002', true, 'ink-jet', 267),
('3003', false, 'laser', 390),
('3004', true, 'ink-jet', 439),
('3005', true, 'bubble', 200),
('3006', true, 'laser', 1999),
('3007', false, 'laser', 350);

-- 각 해답에는 적어도 하나의 부질의를 사용하여야 한다.

-- a) 적어도 1500의 속도를 지닌 PC의 제조업체를 찾아라
SELECT  maker
FROM Product
WHERE model = (
    SELECT  model
    FROM PC
    WHERE speed>=1500);

-- solve-a)
SELECT  DISTINCT(maker)
FROM Product
WHERE model = (
    SELECT  model
    FROM PC
    WHERE speed>=1500);

-- b) 가장 비싼 프린터를 찾아라
SELECT  model
FROM Printer
WHERE price = (
    SELECT  MAX(price)
    FROM Printer);

-- c) 가장 가격이 싼 칼라 프린터의 제조업체를 찾아라
SELECT  maker
FROM Product
WHERE model = (
    SELECT  model
    FROM Printer
    WHERE color=true
        AND price = (
            SELECT  MIN(price)
            FROM Printer));

-- solve-c)
SELECT  maker
FROM product
WHERE model IN (
    SELECT model
    FROM printer
    WHERE color=TRUE
      AND price = (
        SELECT MIN (price)
        FROM printer
        WHERE color=TRUE));

-- d) 가장 작은 메모리 용량을 지닌 것 중 가장 빠른 프로세서를 지닌 PC를 생산하는 PC 제조업체를 찾아라
SELECT  maker
FROM Product
WHERE model=(
    SELECT  model
    FROM
    (
        SELECT  model
            ,speed
        FROM PC
        WHERE ram=(
            SELECT  MIN(ram)
            FROM PC)
    ) Minrams
    WHERE speed = (
        SELECT  MAX(speed)
        FROM PC
        WHERE ram=(
            SELECT  MIN(ram)
            FROM PC)
        )
    );

-- solve-d)
