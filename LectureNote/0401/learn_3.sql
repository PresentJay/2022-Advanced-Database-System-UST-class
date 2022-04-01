select * from Movie;


SELECT  studioName
       , MAX(year)
FROM Movie
GROUP BY  studioName;