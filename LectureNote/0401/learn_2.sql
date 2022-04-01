-- 준비
CREATE TABLE MovieStarM ( name char(30), address varchar(255), birthdate datetime default '1900-01-01' );

show tables;

-- insert 활용 데이터 복사
INSERT INTO MovieStarM
    SELECT  name
        ,address
        ,birthdate
    FROM MovieStar
    WHERE gender='M';

-- 확인

SELECT  *
FROM MovieStarM;

SELECT  *
FROM MovieStar;

-- Movie Relation에는 언급되고 있지만, Studio Relation에는 나타나지 않은 모든 스튜디오를 Studio Relation에 추가하라.
INSERT INTO Studio(name)
    SELECT  distinct studioName
    FROM Movie
    WHERE studioName not IN ( SELECT name FROM Studio);

-- 추가된 튜플의 Address와 presID Attribute에는 NULL값이 사용

-- 영화 임원이 스튜디오 사장인 경우, 'Pres.'라는 직함을 이름 앞에 붙여라.
update MovieExec
SET name = concat('Pres. ', name)
WHERE certID IN ( SELECT presID FROM Studio);

select * from MovieExec; 