--Assignment:List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

CREATE TABLE "assignment_3" AS SELECT * FROM "Data_Employees";

--SELECT "assignment_3".emp_no FROM "assignment_3" 
--JOIN "Data_Department_Manager" 
--ON "assignment_3".emp_no="Data_Department_Manager".emp_no
--JOIN "Data_Departments"
--ON "Data_Department_Manager".dept_no="Data_Departments".dept_no;

--So, again, I can join these ^ tables together when I use * to include all columns, as in the above code. 
--It won't join up when I use selected columns. What's up with that?!

SELECT * FROM "assignment_3"
JOIN "Data_Department_Manager"
ON "assignment_3".emp_no="Data_Department_Manager".emp_no
JOIN "Data_Departments"
ON "Data_Department_Manager".dept_no="Data_Departments".dept_no;

--This ^ code works to join all the tables together, but not if I try to select only some columns. 

