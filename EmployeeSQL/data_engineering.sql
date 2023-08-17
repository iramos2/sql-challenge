-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


CREATE TABLE Departments (
    dept_no VARCHAR(20) PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL
);

CREATE TABLE Titles (
    title_id VARCHAR(20) PRIMARY KEY,
    title VARCHAR(30) NOT NULL
);

CREATE TABLE Employees (
    emp_no INT PRIMARY KEY,
    emp_title_id VARCHAR(20) NOT NULL,
    birth_date VARCHAR(20) NOT NULL,
    first_name VARCHAR(30) NOT NULL,
    last_name VARCHAR(30) NOT NULL,
    sex VARCHAR(10) NOT NULL,
    hire_date VARCHAR(20) NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

CREATE TABLE Dept_manager (
    dept_no VARCHAR(20),
    emp_no INT,
	PRIMARY KEY (dept_no, emp_no)
);

CREATE TABLE Dept_emp (
    emp_no INT PRIMARY KEY,
    dept_no VARCHAR(20) NOT NULL
);

CREATE TABLE Salaries (
    emp_no INT PRIMARY KEY,
    salary MONEY NOT NULL
);