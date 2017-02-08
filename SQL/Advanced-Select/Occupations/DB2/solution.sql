
/*
    Enter your query here and follow these instructions:
    1. Please append a semicolon ";" at the end of the query and enter your query in a single line to avoid error.
    2. The AS keyword causes errors, so follow this convention: "Select t.Field From table1 t" instead of "select t.Field From table1 AS t"
    3. Type your code immediately after comment. Don't leave any blank line.
*/
SELECT COALESCE(DOCTOR,'NULL'),
       COALESCE(PROFESSOR,'NULL'),
       COALESCE(SINGER,'NULL'),
       COALESCE(ACTOR,'NULL')
FROM (SELECT NAME DOCTOR,
             ROW_NUMBER() OVER (ORDER BY NAME) DOC
     FROM OCCUPATIONS
     WHERE OCCUPATION = 'Doctor'
     ) FULL OUTER JOIN
(SELECT NAME PROFESSOR,
        ROW_NUMBER() OVER (ORDER BY NAME) PRO
     FROM OCCUPATIONS
     WHERE OCCUPATION = 'Professor')
ON DOC = PRO
     FULL OUTER JOIN
(SELECT NAME SINGER,
        ROW_NUMBER() OVER (ORDER BY NAME) SING
     FROM OCCUPATIONS
     WHERE OCCUPATION = 'Singer')
ON NVL(DOC,PRO) = SING
     FULL OUTER JOIN
(SELECT NAME ACTOR,
        ROW_NUMBER() OVER (ORDER BY NAME) ACT
     FROM OCCUPATIONS
     WHERE OCCUPATION = 'Actor')
ON NVL(DOC,NVL(PRO,SING)) = ACT
ORDER BY DOC,PRO,SING,ACT;
