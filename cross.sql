CREATE TABLE employses (
    emp_id INT,
    emp_name VARCHAR(50),
    dept_id INT
)

CREATE TABLE departments (
    dept_id INT,
    dept_name VARCHAR(50)
)

INSERT INTO employses VALUES (1, 'John', 101);

INSERT INTO employses VALUES (2, 'Smith', 102);

INSERT INTO departments VALUES (101, 'Human Resourses');
INSERT INTO departments VALUES (102, 'Marketing');

SELECT * FROM employses;
SELECT * FROM departments;

-- CROSS JOIN

SELECT * FROM employses
    CROSS JOIN departments;

-- NATURAL JOIN

SELECT * FROM employses
    NATURAL JOIN departments;

