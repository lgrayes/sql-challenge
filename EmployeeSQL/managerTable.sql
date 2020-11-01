-- List the manager of each department with the following information: 
-- department number, 
-- department name, 
-- the manager's employee number, 
-- last name, 
-- first name.

DROP TABLE IF EXISTS departmentshk;
DROP TABLE IF EXISTS dept_manager;

CREATE TABLE departmentshk (
dept_no varchar primary key,
dept_name varchar
);

select * from departmentshk

CREATE TABLE dept_manager (
dept_no varchar,
emp_no varchar,
FOREIGN KEY (dept_no) REFERENCES departmentshk(dept_no),
FOREIGN KEY (emp_no) REFERENCES employeeshk(emp_no)
);

select * from dept_manager

SELECT departmentshk.dept_no,
departmentshk.dept_name,
employeeshk.emp_no,
employeeshk.last_name, 
employeeshk.first_name
FROM dept_manager
INNER JOIN departmentshk ON departmentshk.dept_no=dept_manager.dept_no
INNER JOIN employeeshk ON employeeshk.emp_no=dept_manager.emp_no;

-- List the department of each employee with the following information: 
-- employee number, 
-- last name, 
-- first name, and 
-- department name.

CREATE TABLE dept_emphk (
emp_no varchar,
dept_no varchar,
FOREIGN KEY (emp_no) REFERENCES employeeshk(emp_no),
FOREIGN KEY (dept_no) REFERENCES departmentshk(dept_no)
);

select * from dept_emphk

SELECT employeeshk.emp_no,
employeeshk.last_name, 
employeeshk.first_name,
departmentshk.dept_name
FROM dept_emphk
INNER JOIN employeeshk ON employeeshk.emp_no=dept_emphk.emp_no
INNER JOIN departmentshk ON departmentshk.dept_no=dept_emphk.dept_no;

