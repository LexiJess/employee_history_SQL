--#1 List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT "Data_Employees".emp_no, "Data_Employees".first_name, "Data_Employees".last_name, "Data_Employees".sex, "Data_Salaries".salary FROM "Data_Employees"
JOIN "Data_Salaries" ON "Data_Employees".emp_no="Data_Salaries".emp_no;

--#2 List first name, last name, and hire date for employees who were hired in 1986. 

SELECT "first_name", "last_name", "hire_date" FROM "Data_Employees" WHERE "hire_date" BETWEEN ('1986-01-01') and ('1986-12-31');

--#3 Assignment:List the manager of each department with the following information: department number, department name, the manager's employee number, 
--last name, first name.

SELECT "Data_Departments".dept_no, "Data_Departments".dept_name, "Data_Department_Manager".emp_no, "Data_Employees".last_name, "Data_Employees".first_name
FROM "Data_Departments" JOIN "Data_Department_Manager" 
ON "Data_Departments".dept_no="Data_Department_Manager".dept_no
JOIN "Data_Employees"
ON "Data_Department_Manager".emp_no="Data_Employees".emp_no;

--#4 List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT "Data_Employees"."emp_no", "Data_Employees"."last_name", "Data_Employees"."first_name", "Data_Departments".dept_name 
FROM "Data_Employees" 
JOIN "Dept_employees" 
ON "Data_Employees".emp_no="Dept_employees".emp_no
JOIN "Data_Departments"
ON "Data_Departments".dept_no="Dept_employees".dept_no;

--#5List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT "first_name", "last_name", "sex" FROM "Data_Employees" WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--#6 List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT "Data_Employees".emp_no, "Data_Employees".last_name, "Data_Employees".first_name, "Data_Departments".dept_name
FROM "Data_Employees" JOIN "Dept_employees"
ON "Dept_employees".emp_no="Data_Employees".emp_no
JOIN "Data_Departments"
ON "Data_Departments".dept_no="Dept_employees".dept_no
WHERE dept_name = 'Sales';


--#7 List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT "Data_Employees".emp_no, "Data_Employees".last_name, "Data_Employees".first_name, "Data_Departments".dept_name
FROM "Data_Employees" JOIN "Dept_employees"
ON "Dept_employees".emp_no="Data_Employees".emp_no
JOIN "Data_Departments"
ON "Data_Departments".dept_no="Dept_employees".dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--#8 In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Select "Data_Employees".last_name, COUNT ("Data_Employees".last_name) AS "name_count"
FROM "Data_Employees" 
GROUP BY "last_name"
ORDER BY "name_count" DESC;
