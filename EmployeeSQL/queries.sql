-- QUERIES

--1 List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT e.emp_no,
	e.last_name,
	e.first_name,
	e.gender,
	s.salary
FROM employees e
JOIN salaries s
ON e.emp_no = s.emp_no;



-- 2. List employees hired in 1986 
SELECT emp_no,first_name,last_name,hire_date
FROM employees
WHERE hire_date LIKE '1986%';


--3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT 
d.dept_no,
d2.dept_name,
d.emp_no,
e.last_name,
e.first_name,
d.from_date,
d.to_date
FROM dept_manager d
JOIN employees e
on e.emp_no = d.emp_no
JOIN departments d2
on d2.dept_no = d.dept_no;


--4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT
e.emp_no,
e2.first_name,
e2.last_name,
d.dept_name
FROM dept_emp e
JOIN departments d
ON e.dept_no = d.dept_no
JOIN employees e2
ON e2.emp_no = e.emp_no;



--5. HERCULES B 
SELECT 
first_name,
last_name,
emp_no
FROM employees
WHERE first_name = 'Hercules'
AND
last_name LIKE 'B%';


--6. EMPLOYEES IN SALES DEPT 
SELECT 
de.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM employees e
JOIN dept_emp de
ON de.emp_no = e.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales';



--7 Sales/Dev 
SELECT 
de.emp_no,
e.last_name,
e.first_name,
d.dept_name
FROM employees e
JOIN dept_emp de
ON de.emp_no = e.emp_no
JOIN departments d
ON d.dept_no = de.dept_no
WHERE dept_name = 'Sales'
OR dept_name = 'Development';


-- 8 Frequency of names
SELECT last_name, COUNT(last_name)
FROM employees
GROUP BY(last_name) 
ORDER BY COUNT(last_name) DESC;



