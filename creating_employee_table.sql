CREATE TABLE employee(
emp_id INT NOT NULL,
emp_name VARCHAR(10) NOT NULL,
emp_surname VARCHAR(10) NULL,
age INT NULL,
department VARCHAR(15) NOT NULL,
salary INT NULL,
job_title VARCHAR(15),
boss VARCHAR(10),
PRIMARY KEY(emp_id)
);
