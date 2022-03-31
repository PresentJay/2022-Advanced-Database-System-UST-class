-- Cartesian Product Test
SELECT *
from Movie, MovieExec;

-- Cartesian Product Order Test
SELECT *
from MovieExec, Movie;

-- 1977년도에 제작된 Star Wars의 제작자 이름을 찾아라.
SELECT  name
FROM Movie, MovieExec
WHERE title='Star Wars'
    AND year=1977
    AND producerID=certID;

-- R.A
select MovieStar.name, MovieExec.name
from MovieStar, MovieExec
where MovieStar.address = MovieExec.address;