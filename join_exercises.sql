USE employees;

SELECT de.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as d
              ON d.emp_no = e.emp_no
         JOIN departments as de
              ON de.dept_no = d.dept_no
WHERE YEAR(d.to_date) = '9999';

SELECT de.dept_name, CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager'
FROM employees as e
         JOIN dept_manager as d
              ON d.emp_no = e.emp_no
         JOIN departments as de
              ON de.dept_no = d.dept_no
WHERE e.gender = 'f' AND YEAR(d.to_date) = '9999';

SELECT t.title, COUNT(t.title) AS Total
FROM titles as t
         JOIN dept_emp as de
              ON de.emp_no = t.emp_no
WHERE de.dept_no = 'd009' AND YEAR(t.to_date) = '9999' AND Year(de.to_date) = '9999'
GROUP BY t.title;

SELECT de.dept_name,CONCAT(e.first_name, ' ', e.last_name) AS 'Department Manager', salary
FROM employees as e
         JOIN dept_manager as d
              ON d.emp_no = e.emp_no
         JOIN departments as de
              ON de.dept_no = d.dept_no
         JOIN salaries s
              ON e.emp_no = s.emp_no
WHERE YEAR(d.to_date) = '9999' AND YEAR(s.to_date) = '9999';