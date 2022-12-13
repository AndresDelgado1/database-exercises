use employees;
-- Find the name of all departments currently managed by women.
SELECT d.dept_name AS 'Department Name', CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM departments as d
         JOIN dept_manager as dm
              ON dm.dept_no = d.dept_no
         JOIN employees as e
              ON e.emp_no = dm.emp_no
where dm.to_date = '9999-01-01' and gender = 'F'
order by dept_name;



-- Find the current titles of employees currently working in the Customer Service department.
SELECT t.title AS 'title', count(title) as Total
FROM titles as t
         JOIN current_dept_emp as de
              ON de.emp_no = t.emp_no
        join departments as d
            on d.dept_no = de.dept_no
where d.dept_no = 'd009' and de.to_date > NOW() && t.to_date > NOW()
GROUP BY title;

