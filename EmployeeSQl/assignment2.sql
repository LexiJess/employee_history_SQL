--List first name, last name, and hire date for employees who were hired in 1986.


  
CREATE TABLE "assignment_2" AS SELECT * FROM "Data_Employees";


--SELECT * FROM "assignment_2" WHERE "hire_date" > ('1985-12-31') and "hire_date"< ('1987-01-01');
--SELECT * FROM "assignment_2" WHERE "hire_date" BETWEEN ('1986-01-01') and ('1986-12-31');

--This ^ code works, but uses "assignment_2", which is frowned upon. 

SELECT "first_name", "last_name", "hire_date" FROM "Data_Employees" WHERE "hire_date" BETWEEN ('1986-01-01') and ('1986-12-31');
