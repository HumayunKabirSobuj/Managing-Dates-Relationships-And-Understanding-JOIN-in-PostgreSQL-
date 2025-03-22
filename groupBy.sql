
SELECT * FROM students;


SELECT country, COUNT(*) FROM students
    GROUP BY country;

SELECT country, COUNT(*), AVG(age) FROM students
    GROUP BY country;

-- HAVING

SELECT country, AVG(age) FROM students
    GROUP BY country
    HAVING AVG(age) > 20;


-- Filter Groups using HAVING to show only countries with avarage age above 22 .

SELECT country, AVG(age) FROM students
GROUP BY country
HAVING AVG(age) > 22;

-- Count student Born in each year 

SELECT EXTRACT(YEAR FROM dob) as birth_year, COUNT(*) 
FROM students
GROUP BY birth_year;

