--List the department of each employee with the following information: employee number, last name, first name, and department name.

--CREATE TABLE "assignment_4" AS SELECT * FROM "Data_Employees";
--SELECT * FROM "assignment_4" INNER JOIN "Dept_employees" ON "assignment_4".emp_no="Dept_employees".emp_no;
--Does this need to be organized under a larger category of department? Or is individual rows ok? Also, how do I drop the duplicate columns after the join?


SELECT "Data_Employees"."emp_no", "Data_Employees"."last_name", "Data_Employees"."first_name", "Data_Departments".dept_name 
FROM "Data_Employees" 
JOIN "Dept_employees" 
ON "Data_Employees".emp_no="Dept_employees".emp_no
JOIN "Data_Departments"
ON "Data_Departments".dept_no="Dept_employees".dept_no;




SELECT "Data_Departments".dept_no, "Data_Departments".dept_name, "Data_Department_Manager".emp_no, "Data_Employees".last_name, "Data_Employees".first_name
FROM "Data_Departments" JOIN "Data_Department_Manager" 
ON "Data_Departments".dept_no="Data_Department_Manager".dept_no
JOIN "Data_Employees"
ON "Data_Department_Manager".emp_no="Data_Employees".emp_no;

