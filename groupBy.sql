
SELECT * FROM students;


SELECT country, COUNT(*) FROM students
    GROUP BY country;

SELECT country, COUNT(*), AVG(age) FROM students
    GROUP BY country;

-- HAVING

SELECT country, AVG(age) FROM students
    GROUP BY country
    HAVING AVG(age) > 20;

