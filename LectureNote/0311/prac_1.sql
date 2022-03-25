use Movie_db;
-- Movie TABLE

CREATE TABLE Movie( title char(50), year int, length int, isColor boolean default TRUE, studioName char(30), producerID char(6) );
--
INSERT data into Movie TABLE
INSERT INTO Movie VALUES('Star wars', 1977, 124, TRUE, 'Fox', 'ME-001');
INSERT INTO Movie VALUES('Mighty Ducks', 1991, 104, TRUE, 'Disney', 'ME-002');
INSERT INTO Movie VALUES('Wayne''s World', 1992, 95, TRUE, 'Paramount', 'ME-003');
INSERT INTO Movie VALUES('Pretty Woman', 1990, 119, FALSE, 'Disney', 'ME-002');
INSERT INTO Movie VALUES('The Maltese Falcon', 1980, 70, TRUE, 'MGM', 'ME-004');
INSERT INTO Movie VALUES('Spider-Man', 2002, NULL, TRUE, 'MGM', 'ME-004');
INSERT INTO Movie VALUES('Star wars', 2004, 150, TRUE, 'Bluesky', 'ME-005');
INSERT INTO Movie VALUES('Tarzan', 2004, 130, TRUE, 'Starking', 'ME-006');
-- Show all data of Movie Table;

SELECT  *
FROM Movie;
--
-- MovieStar TABLE

CREATE TABLE MovieStar(name CHAR(30), address varchar(255), gender char(1) default'?', birthdate date default '1900-01-01');
--
INSERT data into MovieStar TABLE
INSERT INTO MovieStar VALUES('Carrie Fisher', 'Hollywood', 'M', '1950-05-05');
INSERT INTO MovieStar VALUES('Mark Hamill', 'Hollywood', 'M', '1946-04-06');
INSERT INTO MovieStar VALUES('Harrison Ford', 'Berverly Hills', 'M', '1948-04-08');
INSERT INTO MovieStar VALUES('Emilio Esteves', 'Berverly Hills', 'F', '1948-10-15');
INSERT INTO MovieStar VALUES('Dana Carvey', 'Manhattan', 'F', '1947-07-07');
INSERT INTO MovieStar VALUES('Mike Meyers', 'Manhattan', 'F', '1846-06-06');
INSERT INTO MovieStar VALUES('Sydeny Greenstreet', 'Hollywood', 'F', '1953-05-03');
-- Show all data of MovieStar TABLE
SELECT  *
FROM MovieStar;
--
-- StarsIn TABLE

CREATE TABLE StarsIn(movietitle char(50), movieyear INT, starname char(30));
--
--
INSERT data into StarsIn TABLE
INSERT INTO StarsIn VALUES('Star wars', 1977, 'Carrie Fisher');
INSERT INTO StarsIn VALUES('Star wars', 1977, 'Mike Meyers');
INSERT INTO StarsIn VALUES('Star wars', 1977, 'Harrison Ford');
INSERT INTO StarsIn VALUES('Mighty Ducks', 1991, 'Emilio Esteves');
INSERT INTO StarsIn VALUES('Wayne''s World', 1992, 'Dana Carvey');
INSERT INTO StarsIn VALUES('Wayne''s World', 1992, 'Mark Hamill');
INSERT INTO StarsIn VALUES('Pretty Woman', 1990, 'Harrison Ford');
INSERT INTO StarsIn VALUES('The Maltese Falcon', 1980, 'Sydeny Greenstreet');
INSERT INTO StarsIn VALUES('Spider-Man', 2002, 'Harrison Ford');
INSERT INTO StarsIn VALUES('Star wars', 2004, 'Mike Meyers');
INSERT INTO StarsIn VALUES('Star wars', 2004, 'Dana Carvey');
-- Show all data of StarsIn TABLE
SELECT  *
FROM StarsIn;
--
-- MovieExec TABLE

CREATE TABLE MovieExec(name char(30), address varchar(255), certID char(6), netWorth INT);
--
INSERT data into MovieExec TABLE
INSERT INTO MovieExec VALUES('David Nutter', 'Hollywood', 'ME-001', 20000000);
INSERT INTO MovieExec VALUES('Paul Newman', 'Manhattan', 'ME-002', 30000000);
INSERT INTO MovieExec VALUES('Dana Carvey', 'Manhattan', 'ME-003', 30000000);
INSERT INTO MovieExec VALUES('Gary Ross', 'Buena Vista', 'ME-004', 15000000);
INSERT INTO MovieExec VALUES('Tom Frank', 'Malibu', 'ME-005', 9000000);
-- Show all data of Studio TABLE
SELECT  *
FROM MovieExec;
--
-- Studio TABLE

CREATE TABLE Studio (name char(30), address varchar(255), presID char(6));
--
INSERT data into Studio TABLE
INSERT INTO Studio VALUES('Fox', 'Hollywood', 'ME-001');
INSERT INTO Studio VALUES('Disney', 'Buena Vista', 'ME-002');
INSERT INTO Studio VALUES('Paramount', 'Manhattan', 'ME-003');
INSERT INTO Studio VALUES('MGM', 'Hollywood', 'ME-004');
INSERT INTO Studio VALUES('Bluesky', 'Malibu', 'ME-005');
-- Show all data of Studio TABLE
SELECT  *
FROM Studio;