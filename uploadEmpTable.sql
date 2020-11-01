DROP TABLE IF EXISTS employeeshk;
DROP TABLE IF EXISTS salarieshk;

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

CREATE TABLE salarieshk (
emp_no varchar,
salary int,
FOREIGN KEY (emp_no) REFERENCES employeeshk(emp_no)
);

SELECT * FROM salarieshk;

SELECT employeesHK.last_name, 
employeesHK.first_name, 
employeesHK.sex,
salarieshk.salary
FROM employeesHK
INNER JOIN salarieshk ON
employeesHK.emp_no=salarieshk.emp_no;