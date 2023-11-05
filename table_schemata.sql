--DATA ENGINEERING
-- Drop Tables if Existing
DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

--create table for departments
CREATE TABLE "departments" (
    "dept_no" VARCHAR(25)   NOT NULL,
    "dept_name" VARCHAR(25)   NOT NULL,
    CONSTRAINT "pk_departments" PRIMARY KEY ("dept_no")
);

--create table for department employee
CREATE TABLE "dept_emp" (
    "emp_no" INT   NOT NULL,
    "dept_no" VARCHAR(25)   NOT NULL
);

--create table for department manager
CREATE TABLE "dept_manager" (
    "dept_no" VARCHAR(25)   NOT NULL,
    "emp_no" INT   NOT NULL
);

--create table for employees
CREATE TABLE "employees" (
    "emp_no" INT   NOT NULL,
	"emp_title" VARCHAR(25) NOT NULL,
    "birth_date" DATE   NOT NULL,
    "first_name" VARCHAR(25)   NOT NULL,
    "last_name" VARCHAR(25)   NOT NULL,
    "sex" VARCHAR(25)   NOT NULL,
    "hire_date" DATE   NOT NULL,
    CONSTRAINT "pk_employees" PRIMARY KEY ("emp_no")
);

--create table for salary
CREATE TABLE "salaries" (
    "emp_no" INT   NOT NULL,
    "salary" INT   NOT NULL
);

--Create table for title
CREATE TABLE titles (
	"title_id" VARCHAR(25) PRIMARY KEY,
	"title" VARCHAR(25) NOT NULL
);


