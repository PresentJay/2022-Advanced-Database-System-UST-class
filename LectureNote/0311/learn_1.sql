-- 데이터베이스 선언
CREATE DATABASE Movie_db
    DEFAULT CHARACTER SET UTF8;

-- 데이터베이스 확인
SHOW DATABASES;

-- 데이터베이스 선정
USE Movie_db;

-- 데이터베이스의 테이블들 보기
SHOW TABLES;

-- 테이블 선언
CREATE TABLE MovieStar ( name CHAR(30),
       address VARCHAR(255),
       gender CHAR(1),
       birthdate DATETIME );

-- 테이블 선언 확인
DESC MovieStar;

-- 테이블 삭제
DROP TABLE MovieStar;

-- 디폴트 값 (DEFAULT 이후 값을 주지 않았을 때 NULL이 사용됨)
CREATE TABLE MovieStar ( name CHAR(30), address VARCHAR(255), gender CHAR(1) DEFAULT '?', birthdate DATETIME DEFAULT '1900-01-01' );

-- relation schema의 변경
ALTER TABLE MovieStar ADD phone CHAR(16);
ALTER TABLE MovieStar DROP COLUMN birthdate;
ALTER TABLE MovieStar ADD phone CHAR(16) DEFAULT 'unlisted';