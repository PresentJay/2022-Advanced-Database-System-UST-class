use Movie_db;

SELECT  address
FROM Studio
WHERE name = 'MGM';

SELECT  birthdate
FROM MovieStar
WHERE name="Harrison Ford";

SELECT  starname
FROM StarsIn
WHERE movietitle like '%World%' OR movieyear=1990;

SELECT  name
FROM MovieExec
WHERE networth>10000000

SELECT  *
FROM MovieStar
WHERE address like '%'