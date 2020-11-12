--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."



SELECT "first_name", "last_name", "sex" FROM "Data_Employees" WHERE first_name = 'Hercules' and last_name LIKE 'B%';
