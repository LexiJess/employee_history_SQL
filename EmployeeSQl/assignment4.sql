--List the department of each employee with the following information: employee number, last name, first name, and department name.



SELECT "Data_Employees"."emp_no", "Data_Employees"."last_name", "Data_Employees"."first_name", "Data_Departments".dept_name 
FROM "Data_Employees" 
JOIN "Dept_employees" 
ON "Data_Employees".emp_no="Dept_employees".emp_no
JOIN "Data_Departments"
ON "Data_Departments".dept_no="Dept_employees".dept_no;

