--List all employees in the Sales department, including their employee number, last name, first name, and department name.

CREATE TABLE "assignment_6" AS SELECT * FROM "Data_Employees";

SELECT * FROM "assignment_6"
JOIN "Data_Department_Manager"
ON "assignment_6".emp_no="Data_Department_Manager".emp_no
JOIN "Data_Departments"
ON "Data_Department_Manager".dept_no="Data_Departments".dept_no WHERE ;


--SELECT "assignment_3".emp_no FROM "assignment_3" 
--JOIN "Data_Department_Manager" 
--ON "assignment_3".emp_no="Data_Department_Manager".emp_no
--JOIN "Data_Departments"
--ON "Data_Department_Manager".dept_no="Data_Departments".dept_no;

--So, again, I can join these ^ tables together when I use * to include all columns, as in the above code. 
--It won't join up when I use selected columns. What's up with that?!
