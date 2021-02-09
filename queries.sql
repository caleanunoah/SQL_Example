-- Use github open source database, Employees -- 
USE employees;

-- Write an SQL query to format full names from employee table --
SELECT 
	CONCAT(first_name, " ", last_name) AS "Full Name"
FROM employees;

-- How many records do we have in employees? --
SELECT 
	COUNT(1) as "Total Employees"
FROM employees;

-- How many males and female employees do we have  
SELECT 
	gender, COUNT(gender) as "Frequency"
FROM employees
WHERE gender = "M" OR gender = "F"
GROUP BY gender 
ORDER BY gender DESC;

-- How many Distinct jobs do we have? --
SELECT DISTINCT dept_name
FROM departments;

