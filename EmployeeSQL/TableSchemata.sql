-- Departments
CREATE TABLE departmentshk (
dept_no varchar primary key,
dept_name varchar
);

select * from departmentshk

-- Department-Employee
CREATE TABLE dept_emphk (
emp_no varchar,
dept_no varchar,
FOREIGN KEY (emp_no) REFERENCES employeeshk(emp_no),
FOREIGN KEY (dept_no) REFERENCES departmentshk(dept_no)
);

select * from dept_emphk

-- Department-Manager
CREATE TABLE dept_manager (
dept_no varchar,
emp_no varchar,
FOREIGN KEY (dept_no) REFERENCES departmentshk(dept_no),
FOREIGN KEY (emp_no) REFERENCES employeeshk(emp_no)
);

select * from dept_manager

-- Employees
CREATE TABLE employeeshk (
	emp_no varchar(255) primary key,
	emp_title_id varchar(255),
	birth_date varchar(255),
	first_name varchar(255),
	last_name varchar(255),
	sex varchar(255),
	hire_date date
);

SELECT * FROM employeeshk;

-- Employees-Salary
CREATE TABLE salarieshk (
emp_no varchar,
salary int,
FOREIGN KEY (emp_no) REFERENCES employeeshk(emp_no)
);

SELECT * FROM salarieshk;

-- Title
CREATE TABLE titleshk (
title_id varchar,
title varchar
);

SELECT * FROM titleshk;