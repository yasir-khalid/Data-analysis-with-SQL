-- SQL QUERIES BASICS PRACTISE
-- AUTHOR: YASIR KHALID

-- Select employee name AS  worker
SELECT emp_name AS worker FROM employee;

--  Select employees where age less than 45 || Bigger than 25 ||  Where salary less than 5000
SELECT * FROM employee WHERE (age BETWEEN 25 AND 45) OR salary < 5000;

-- Where age is not 45  || age is not 55
SELECT * FROM employee WHERE age != 45 OR age != 55;

-- Create one table
CREATE TABLE demo(
id INT NOT NULL AUTO_INCREMENT,
name VARCHAR(15) DEFAULT 'N/A',
class VARCHAR (20) DEFAULT 'Unknown',
PRIMARY KEY (id)
);

-- Drop the created table
DROP TABLE demo;

-- Drop column
ALTER TABLE employee DROP COLUMN emp_surname;

-- Describe Table columns
DESCRIBE employee;

-- Show Columns of table
SHOW COLUMNS FROM employee;

-- Show all tables
SHOW TABLES;

-- Add coulmn to table
ALTER TABLE employee ADD COLUMN(
new_column VARCHAR(10) NULL,
);

-- Change data type of a column
ALTER TABLE employee MODIFY COLUMN new_column INT NULL;

-- Get me the all  different department names|| different bosses
SELECT department, boss FROM employee;

-- Get me employees that have salray bigger than 20000 and age bigger than 35
SELECT * FROM employee WHERE salary > 20000 AND age > 35;

-- Get me employees that have marketing department or have boss Mark
SELECT * FROM employee WHERE department = 'marketing' OR boss = 'mark';

-- Get me employees that department is not Customer or salary less than 15000 and age bigger than 45
SELECT * FROM employee WHERE department != 'customer' OR (salary < 15000 AND age > 45);

-- Get me employees where department in enginnering,marketing,H&R
SELECT * FROM employee WHERE department IN ('engineering', 'marketing' ,'H&R');

-- Get me users where name start with L ||    End with O
SELECT * FROM employee WHERE emp_name LIKE ('L%O');

-- Get me employee salary is 19000-90000
SELECT * FROM employee WHERE salary BETWEEN 19000 AND 90000;

-- Get me employees who do not have boss
SELECT * FROM employee WHERE boss IS NULL;

-- Make a list with order for salary Descending order
SELECT * FROM employee ORDER BY salary DESC;

-- Get me first 5 employee that ages bigger than 40
SELECT * FROM employee WHERE age > 40 LIMIT 5;

-- Get me employee's count
SELECT COUNT(emp_id) FROM employee;

-- Sum all salaries
SELECT SUM(salary) FROM employee;

-- get me average salary
SELECT AVG(salary) FROM employee;

-- Get me minimum salary
SELECT MIN(salary) FROM employee;

-- Get me maximum age
SELECT MAX(age) FROM employee;
