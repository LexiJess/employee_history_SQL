--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

CREATE TABLE "assignment_3" AS SELECT * FROM "Data_Employees";
SELECT * FROM "assignment_3";

SELECT "assignment_3".emp_no, "Data_Departments".dept_no
FROM "assignment_3" 
JOIN "Data_Department_Manager" 
ON "assignment_3".emp_no="Data_Department_Manager".emp_no
JOIN "Data_Departments"
ON "Data_Department_Manager".dept_no="Data_Departments".dept_no;


--How do I get these serial joins to join up correctly?



  
SELECT
  student.first_name,
  student.last_name,
  course.name
FROM student
JOIN student_course
  ON student.id = student_course.student_id
JOIN course
  ON course.id = student_course.course_id;