-- 1977년도에 제작된 Star Wars의 제작자 이름을 찾아라.
SELECT  name
FROM MovieExec
WHERE certID = (
    SELECT  producerID
    FROM `Movie`
    WHERE title='Star Wars'
        AND year=1977);

-- Scala Subquery
SELECT  producerID
FROM `Movie`
WHERE title='Star Wars'
    AND year=1977;

-- Harrison Ford가 출연한 영화들의 제작자들의 이름을 찾아라
-- 중복없음 Version
SELECT  name
FROM MovieExec
WHERE certID IN (
    SELECT  producerID
    FROM Movie
    WHERE (title, year) IN (
        SELECT  movietitle
            ,movieyear
        FROM StarsIn
        WHERE starname='Harrison Ford'));

-- 중복발생가능 Version
SELECT  name
FROM MovieExec, Movie, StarsIn
WHERE certID=producerID
    AND title=movietitle
    AND year=movieyear
    AND starname='Harrison Ford';