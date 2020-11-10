--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


CREATE TABLE "assignment_5" AS SELECT * FROM "Data_Employees";



ALTER TABLE "assignment_5" DROP COLUMN "emp_title";
ALTER TABLE "assignment_5" DROP COLUMN "birth_date";
ALTER TABLE "assignment_5" DROP COLUMN "hire_date";
SELECT * FROM "assignment_5" WHERE first_name = 'Hercules' and last_name LIKE 'B%';





