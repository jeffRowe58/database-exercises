USE employees;

SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date IN (SELECT hire_date
                    FROM employees
                    WHERE emp_no IN (SELECT emp_no FROM employees WHERE emp_no = 101010));

SELECT title
FROM titles
WHERE emp_no IN (SELECT emp_no
                 FROM employees
                 WHERE first_name IN (SELECT first_name
                                      FROM employees
                                      WHERE first_name = 'Aamod'));

SELECT first_name, last_name
FROM employees
WHERE emp_no
    IN (SELECT emp_no FROM dept_manager WHERE to_date LIKE '9999%')
  AND gender = 'f';

SELECT dept_name
FROM departments
WHERE dept_no IN (SELECT dept_no
                  FROM dept_manager
                  WHERE emp_no IN (SELECT emp_no FROM employees WHERE gender = 'f')
                    AND to_date >
                        now());

SELECT first_name, last_name
FROM employees
WHERE emp_no IN (
    SELECT emp_no
    FROM salaries
    WHERE salary IN (
        SELECT MAX(salary) FROM salaries));