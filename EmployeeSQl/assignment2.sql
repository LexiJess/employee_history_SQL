--List first name, last name, and hire date for employees who were hired in 1986.
--what's the key to getting the wildcard % with the hire date?

  
CREATE TABLE "assignment_2" AS SELECT * FROM "Data_Employees";


ALTER TABLE "assignment_2" DROP COLUMN "emp_title";
ALTER TABLE "assignment_2" DROP COLUMN "birth_date";
ALTER TABLE "assignment_2" DROP COLUMN "sex";
ALTER TABLE "assignment_2" DROP COLUMN "emp_no";

--SELECT * FROM "assignment_2" WHERE "hire_date" > ('1985-12-31') and "hire_date"< ('1987-01-01');

SELECT * FROM "assignment_2" WHERE "hire_date" BETWEEN ('1986-01-01') and ('1986-12-31');

SELECT "first_name", "last_name", "hire_date" FROM "Data_Employees" WHERE "hire_date" BETWEEN ('1986-01-01') and ('1986-12-31');
--this ^ line is what I need to use for the other tables ,rather than dropping columns. 