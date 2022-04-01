-- crossjoin
SELECT  *
FROM MovieStar
    CROSS JOIN MovieExec;

-- innerjoin

SELECT  *
FROM MovieStar
    INNER JOIN MovieExec;

SELECT  *
FROM MovieStar
    INNER JOIN MovieExec
    ON MovieStar.name=MovieExec.name AND MovieStar.address=MovieExec.address;

-- outerjoin
-- left
SELECT  *
FROM MovieStar
    LEFT JOIN MovieExec
    ON MovieStar.name=MovieExec.name AND MovieStar.address=MovieExec.address;

-- right
SELECT  *
FROM MovieStar
    RIGHT JOIN MovieExec
    ON MovieStar.name=MovieExec.name AND MovieStar.address=MovieExec.address;