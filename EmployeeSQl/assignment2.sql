--List first name, last name, and hire date for employees who were hired in 1986.
--what's the key to getting the wildcard % with the hire date?

  
CREATE TABLE "assignment_2" AS SELECT * FROM "Data_Employees";


ALTER TABLE "assignment_2" DROP COLUMN "emp_title";
ALTER TABLE "assignment_2" DROP COLUMN "birth_date";
ALTER TABLE "assignment_2" DROP COLUMN "sex";
ALTER TABLE "assignment_2" DROP COLUMN "emp_no";

SELECT * FROM "assignment_2" WHERE "hire_date" LIKE date('1986%');