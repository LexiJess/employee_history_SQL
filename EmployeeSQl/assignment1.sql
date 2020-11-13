--#1 List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT "Data_Employees".emp_no, "Data_Employees".first_name, "Data_Employees".last_name, "Data_Employees".sex, "Data_Salaries".salary FROM "Data_Employees"
JOIN "Data_Salaries" ON "Data_Employees".emp_no="Data_Salaries".emp_no;
