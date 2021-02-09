-- Use github open source database, employees -- 
USE employees;

-- Query 1: Write an SQL query to format full names their employee number --
SELECT 
	 emp_no AS "Employee #", 
     CONCAT(first_name, " ", last_name) AS "Full Name"
FROM employees;

-- Query 2: How many males and female employees do we have?  ---
SELECT 
	gender, COUNT(gender) AS "Frequency"
FROM employees
WHERE gender = "M" OR gender = "F"
GROUP BY gender 
ORDER BY gender DESC;

-- Query 3: Do men and women get paid equally? (Spoiler alert, they do :D ) --
SELECT 
	employees.gender, 
    AVG(salaries.salary) as "Average Salary $"
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no
GROUP BY gender;

-- Query 4: Find all employees hired within the year 2000 --
SELECT
	emp_no as "Employee #",
    hire_date
FROM employees
WHERE YEAR(hire_date) LIKE "%2000%"
ORDER BY emp_no;


-- IGNORE BELOW. Validating query 5 by calculating individually--
/*
SELECT employees.gender, AVG(salaries.salary)
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no
WHERE employees.gender = "F";

SELECT employees.gender, AVG(salaries.salary)
FROM employees
INNER JOIN salaries ON employees.emp_no=salaries.emp_no
WHERE employees.gender = "M";
*/

