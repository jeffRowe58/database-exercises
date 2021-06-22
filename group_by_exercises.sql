USE employees;

SELECT DISTINCT title FROM titles;

SELECT last_name FROM employees WHERE last_name like 'E%e'
GROUP BY last_name;

SELECT DISTINCT first_name, last_name FROM employees WHERE last_name like 'E%e';


SELECT last_name FROM employees WHERE last_name like '%q%'
AND(last_name NOT LIKE '%QU%')
GROUP BY last_name;

SELECT COUNT(*), last_name FROM employees WHERE last_name like '%q%'
AND(last_name NOT LIKE '%QU%')
GROUP BY last_name;

SELECT COUNT(*), gender FROM employees WHERE first_name
IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;