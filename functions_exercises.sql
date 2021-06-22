USE employees;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%E';

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE birth_date LIKE '____-12-25';

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE birth_date LIKE '____-12-25' AND(YEAR(hire_date) BETWEEN 1990 AND 1999);

SELECT CONCAT(first_name, ' ', last_name) FROM employees
WHERE birth_date LIKE '____-12-25' AND
    (YEAR(hire_date) BETWEEN 1990 AND 1999)
ORDER BY YEAR(birth_date) ASC, hire_date DESC;

SELECT CONCAT(first_name, ' ', last_name, ' / Days working for the company: ',DATEDIFF(NOW(), hire_date)) FROM employees
WHERE birth_date LIKE '____-12-25' AND
    (YEAR(hire_date) BETWEEN 1990 AND 1999)