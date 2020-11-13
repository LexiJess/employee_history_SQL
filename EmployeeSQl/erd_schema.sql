-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/ERiS7s
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "Data_Department_Manager" (
    "dept_no" VARCHAR   NOT NULL,
    "emp_no" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Department_Manager" PRIMARY KEY (
        "dept_no","emp_no"
     )
);

CREATE TABLE "Data_Departments" (
    "dept_no" VARCHAR   NOT NULL,
    "dept_name" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Departments" PRIMARY KEY (
        "dept_no"
     )
);

CREATE TABLE "Data_Employees" (
    "emp_no" VARCHAR   NOT NULL,
    "emp_title" VARCHAR   NOT NULL,
    "birth_date" date,
    "first_name" VARCHAR   NOT NULL,
    "last_name" VARCHAR   NOT NULL,
    "sex" VARCHAR   NOT NULL,
    "hire_date" date   NOT NULL,
    CONSTRAINT "pk_Data_Employees" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Data_Salaries" (
    "emp_no" VARCHAR   NOT NULL,
    "salary" int   NOT NULL,
    CONSTRAINT "pk_Data_Salaries" PRIMARY KEY (
        "emp_no"
     )
);

CREATE TABLE "Data_Titles" (
    "title_id" VARCHAR   NOT NULL,
    "title" VARCHAR   NOT NULL,
    CONSTRAINT "pk_Data_Titles" PRIMARY KEY (
        "title_id"
     )
);

-- Table documentation comment 1 (try the PDF/RTF export)
CREATE TABLE "Dept_employees" (
    "emp_no" VARCHAR   NOT NULL,
    "dept_no" VARCHAR   NOT NULL
);

ALTER TABLE "Data_Department_Manager" ADD CONSTRAINT "fk_Data_Department_Manager_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Data_Departments" ("dept_no");

ALTER TABLE "Data_Department_Manager" ADD CONSTRAINT "fk_Data_Department_Manager_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Data_Employees" ("emp_no");

ALTER TABLE "Data_Employees" ADD CONSTRAINT "fk_Data_Employees_emp_title" FOREIGN KEY("emp_title")
REFERENCES "Data_Titles" ("title_id");

ALTER TABLE "Data_Salaries" ADD CONSTRAINT "fk_Data_Salaries_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Data_Employees" ("emp_no");

ALTER TABLE "Dept_employees" ADD CONSTRAINT "fk_Dept_employees_emp_no" FOREIGN KEY("emp_no")
REFERENCES "Data_Employees" ("emp_no");

ALTER TABLE "Dept_employees" ADD CONSTRAINT "fk_Dept_employees_dept_no" FOREIGN KEY("dept_no")
REFERENCES "Data_Departments" ("dept_no");

SELECT * FROM Data_Titles
