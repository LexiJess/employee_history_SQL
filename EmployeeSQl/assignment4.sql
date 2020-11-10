--List the department of each employee with the following information: employee number, last name, first name, and department name.

CREATE TABLE "assignment_4" AS SELECT * FROM "Data_Employees";



ALTER TABLE "assignment_4" DROP COLUMN "emp_title";
ALTER TABLE "assignment_4" DROP COLUMN "birth_date";
ALTER TABLE "assignment_4" DROP COLUMN "hire_date";
ALTER TABLE "assignment_4" DROP COLUMN "sex";
SELECT * FROM "assignment_4" INNER JOIN "Dept_employees" ON "assignment_4".emp_no="Dept_employees".emp_no;

SELECT * FROM "assignment_4";

--Does this need to be organized under a larger category of department? Or is individual rows ok? Also, how do I drop the duplicate columns after the join?