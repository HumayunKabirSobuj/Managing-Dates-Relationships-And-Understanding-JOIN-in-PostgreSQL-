
-- Show Time Zone
SHOW timezone;

-- Show Time Stamp

SELECT now();

CREATE TABLE timeZ(ts TIMESTAMP without time zone, tsz TIMESTAMP with time zone);

INSERT INTO timeZ VALUES('2024-01-12 10:45:00','2024-01-12 10:45:00');

SELECT * FROM timeZ;


SELECT now();


SELECT CURRENT_DATE;

SELECT now()::date;


SELECT now()::time;


-- Formate Time

SELECT to_char(now(),'dd/mm/yyyy');


SELECT CURRENT_DATE - INTERVAL '1 year 2 month';


-- Calculate AGE

SELECT age (CURRENT_DATE, '2004-07-15');

SELECT *, age(CURRENT_DATE, dob) FROM students;

-- extract

SELECT EXTRACT(YEAR FROM '2025-01-01'::DATE)
SELECT EXTRACT(MONTH FROM '2025-01-01'::DATE)


SELECT 0::BOOLEAN;