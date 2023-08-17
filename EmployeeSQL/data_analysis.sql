--1
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
INNER JOIN salaries s
	ON e.emp_no=s.emp_no;

--2
SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date BETWEEN DATE '01-01-1986' AND DATE '12-31-1986';

--3
SELECT dm.dept_no, d.dept_name, dm.emp_no, e.last_name, e.first_name
FROM dept_manager dm
INNER JOIN departments d
	ON dm.dept_no=d.dept_no
INNER JOIN employees e
	ON dm.emp_no=e.emp_no;
	
--4
SELECT de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
	ON e.emp_no=de.emp_no
INNER JOIN departments d
	ON de.dept_no=d.dept_no;
	
--5
SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hurcules' AND last_name = 'B%';

--6
SELECT de.emp_no, e.last_name, e.first_name
FROM employees e
INNER JOIN dept_emp de
	ON e.emp_no=de.emp_no
WHERE de.dept_no = 'd007';

--7
SELECT de.emp_no, e.last_name, e.first_name, d.dept_name
FROM employees e
INNER JOIN dept_emp de
	ON e.emp_no=de.emp_no
INNER JOIN departments d
	ON de.dept_no=d.dept_no
WHERE de.dept_no IN ('d007', 'd005');

--8
SELECT last_name, COUNT(*) AS frequency
FROM employees
GROUP BY last_name
ORDER BY frequency DESC;