--List the following details of each employee: employee number, last name, first name, sex, and salary.

CREATE TABLE "assignment_1" AS SELECT * FROM "Data_Employees";


SELECT * FROM "assignment_1" FULL OUTER JOIN "Data_Salaries" ON "assignment_1".emp_no="Data_Salaries".emp_no;

--This works, if it *is* clunky. I made the new table so I could not worry about losing or messing up the data from the original tables
--Why will this not work when selecting columns, but only when using * to select the entire table? What does ''"emp_no" ambiguous' mean?
--Why won't the Data_Salaries join show up when using selected columns?!

