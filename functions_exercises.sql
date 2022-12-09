USE employees;
-- -- Find all employees with first names 'Irena', 'Vidya', or 'Maya' — 709 rows (Hint: Use IN)
-- SELECT *
-- FROM employees
-- WHERE first_name IN ('Irena', 'Vidya', 'Maya')
-- -- ORDER BY first_name
-- -- ORDER BY first_name, last_name;
-- ORDER BY last_name, first_name;
--
--
--
-- -- Find all emploees whose last name starts with 'E' — 7,330 rows
-- SELECT *
-- FROM employees
-- WHERE last_name like 'E%'
-- ORDER BY emp_no DESC;
--
--
--
-- -- Find all employees with a 'q' in their last name — 1,873 rows.
-- SELECT *
-- FROM employees
-- WHERE last_name like '%q%' ;
--
--
--
-- -- Update your query for 'Irena', 'Vidya', or 'Maya' to use OR instead of IN — 709 rows.
-- SELECT *
-- FROM employees
-- WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';
--
--
--
-- -- Find all employees whose last name starts or ends with 'E' — 30,723 rows
-- SELECT *
-- FROM employees
-- WHERE last_name like 'E%' OR last_name like '%E';
--
--
--
-- --   Duplicate the previous query and update it to find all employees whose last name starts and ends with 'E' — 899 rows.
-- SELECT *
SELECT CONCAT(first_name,' ', last_name)
FROM employees
WHERE last_name like 'E%' AND last_name like '%E';
--
--
--
-- -- Find all employees with a 'q' in their last name but not 'qu' — 547 rows.
-- SELECT *
-- FROM employees
-- WHERE last_name like '%q%' AND last_name NOT LIKE '%qu%';



-- Find all employees born on Christmas — 842 rows.
SELECT *
FROM employees
WHERE  month(birth_date) = 12
  AND day(birth_date) = 25;



-- Find all employees hired in the 90s and born on Christmas — 362 rows.
SELECT datediff(curdate(), hire_date)
FROM employees
WHERE (year(hire_date) BETWEEN 1990 and 1999)
    AND month(birth_date) = 12
    AND day(birth_date) = 25
    ORDER BY birth_date ASC, hire_date DESC;


SELECT first_name, hire_date, birth_date, datediff(curdate(), hire_date)
FROM employees
WHERE (year(hire_date) BETWEEN 1990 and 1999)
    AND month(birth_date) = 12
  AND day(birth_date) = 25
ORDER BY birth_date ASC, hire_date DESC;


