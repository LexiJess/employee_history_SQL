--#2 List first name, last name, and hire date for employees who were hired in 1986. 

SELECT "first_name", "last_name", "hire_date" FROM "Data_Employees" WHERE "hire_date" BETWEEN ('1986-01-01') and ('1986-12-31');
