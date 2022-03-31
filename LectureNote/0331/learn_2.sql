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