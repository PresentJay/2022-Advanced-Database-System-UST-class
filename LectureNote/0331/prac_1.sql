-- Star wars에 나오는 남자 스타들은 누구였는가?
( SELECT  starname AS ManOfStarwars
FROM StarsIn
WHERE movietitle='Star wars')
INTERSECT
( SELECT name
FROM MovieStar
WHERE gender='M');

-- prof
SELECT  s.name
FROM StarsIn AS si, MovieStar AS s
WHERE si.movietitle='Star wars'
    AND si.starname=s.name
    AND s.gender='M';

-- 1980년에 MGM에서 제작된 영화에 어떤 스타들이 나왔는가?
SELECT  si.starname
FROM Movie AS m, StarsIn AS si
WHERE m.year=1980
    AND m.studioName='MGM'
    AND si.movietitle=m.title;

-- Wayne's World보다 상영 시간이 긴 영화는 무엇인가?
SELECT  m2.title, m2.year, m2.length
FROM Movie AS m1, Movie AS m2
WHERE m1.title='Wayne''s World'
    AND m2.length > m1.length;