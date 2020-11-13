--#6 List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT "Data_Employees".emp_no, "Data_Employees".last_name, "Data_Employees".first_name, "Data_Departments".dept_name
FROM "Data_Employees" JOIN "Dept_employees"
ON "Dept_employees".emp_no="Data_Employees".emp_no
JOIN "Data_Departments"
ON "Data_Departments".dept_no="Dept_employees".dept_no
WHERE dept_name = 'Sales';