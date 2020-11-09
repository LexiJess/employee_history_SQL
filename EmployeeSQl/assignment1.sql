CREATE TABLE "assignment_1" AS SELECT * FROM "Data_Employees";



ALTER TABLE "assignment_1" DROP COLUMN "emp_title";
ALTER TABLE "assignment_1" DROP COLUMN "birth_date";
ALTER TABLE "assignment_1" DROP COLUMN "hire_date";
SELECT * FROM "assignment_1" INNER JOIN "Data_Salaries" ON "assignment_1".emp_no="Data_Salaries".emp_no;

SELECT * FROM "assignment_1";

