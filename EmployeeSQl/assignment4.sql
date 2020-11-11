--List the department of each employee with the following information: employee number, last name, first name, and department name.

CREATE TABLE "assignment_4" AS SELECT * FROM "Data_Employees";



ALTER TABLE "assignment_4" DROP COLUMN "emp_title";
ALTER TABLE "assignment_4" DROP COLUMN "birth_date";
ALTER TABLE "assignment_4" DROP COLUMN "hire_date";
ALTER TABLE "assignment_4" DROP COLUMN "sex";
SELECT * FROM "assignment_4" INNER JOIN "Dept_employees" ON "assignment_4".emp_no="Dept_employees".emp_no;
--Does this need to be organized under a larger category of department? Or is individual rows ok? Also, how do I drop the duplicate columns after the join?


SELECT "emp_no", "last_name", "first_name" FROM "Data_Employees" INNER JOIN "Dept_employees" ON "Data_Employees".emp_no="Dept_employees".emp_no;
--This trying to join thing does not work when using selected columns. Why not? What does "emp_no ambiguous" mean?
