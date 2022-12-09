USE employees;

-- In your script, use DISTINCT to find the unique titles in the titles table.
SELECT DISTINCT title
FROM titles;



-- Update the query to find just the unique last names that start and end with 'E' using GROUP BY.
SELECT last_name
FROM employees
WHERE last_name like 'E%' AND last_name like '%E'
GROUP BY last_name;



-- Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'
select first_name, last_name FROM employees
WHERE last_name like 'E%' AND last_name like '%E'
GROUP BY first_name,last_name;



-- Find the unique last names with a 'q' but not 'qu'.
select count(last_name), last_name FROM employees
WHERE last_name like '%q%' AND last_name not like '%qu%'
group by last_name
order by last_name asc;



-- Update your query for 'Irena', 'Vidya', or 'Maya'
SELECT count(first_name), first_name, gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY first_name;