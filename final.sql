-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employeesHK.emp_no,
employeesHK.last_name, 
employeesHK.first_name, 
employeesHK.sex,
salarieshk.salary
FROM employeesHK
INNER JOIN salarieshk ON
employeesHK.emp_no=salarieshk.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT employeesHK.first_name,
employeesHK.last_name, 
employeesHK.hire_date
FROM employeeshk
WHERE hire_date >= '1986-01-01' and hire_date <= '1986-12-30';

-- List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.


-- List the department of each employee with the following information: employee number, last name, first name, and department name.


-- List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT employeesHK.first_name,
employeesHK.last_name, 
employeesHK.sex
FROM employeeshk
WHERE first_name = 'Hercules' and last_name LIKE 'B%'

-- List all employees in the Sales department, including their employee number, last name, first name, and department name.


-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.