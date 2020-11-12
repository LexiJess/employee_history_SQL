--Assignment:List the manager of each department with the following information: department number, department name, the manager's employee number, 
--last name, first name.



SELECT "Data_Departments".dept_no, "Data_Departments".dept_name, "Data_Department_Manager".emp_no, "Data_Employees".last_name, "Data_Employees".first_name
FROM "Data_Departments" JOIN "Data_Department_Manager" 
ON "Data_Departments".dept_no="Data_Department_Manager".dept_no
JOIN "Data_Employees"
ON "Data_Department_Manager".emp_no="Data_Employees".emp_no;


