-- List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT employeesHK.emp_no,
employeesHK.last_name, 
employeesHK.first_name, 
employeesHK.sex,
salarieshk.salary
FROM employeesHK
INNER JOIN salarieshk ON
employeesHK.emp_no=salarieshk.emp_no;