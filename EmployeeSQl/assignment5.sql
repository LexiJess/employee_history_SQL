--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."


CREATE TABLE "assignment_5" AS SELECT * FROM "Data_Employees";



--ALTER TABLE "assignment_5" DROP COLUMN "emp_title";
--ALTER TABLE "assignment_5" DROP COLUMN "birth_date";
--ALTER TABLE "assignment_5" DROP COLUMN "hire_date";
--SELECT * FROM "assignment_5" WHERE first_name = 'Hercules' and last_name LIKE 'B%';

--This code ^ works, but uses the column-dropped table, which is frowned upon. 

SELECT "first_name", "last_name", "sex" FROM "Data_Employees" WHERE first_name = 'Hercules' and last_name LIKE 'B%';
--why does this selected-column query work when the others do not? Because it's not a join?




