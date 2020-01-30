
-- DEPTS
CREATE TABLE departments(
	dept_no VARCHAR(30) UNIQUE PRIMARY KEY NOT NULL,
	dept_name VARCHAR(30) NOT NULL
);

-- EMPLOYEES
CREATE TABLE employees(
	emp_no INT PRIMARY KEY UNIQUE NOT NULL,
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender TEXT,
	hire_date VARCHAR(30)
	);
	
-- DEPARTMENT EMPLOYEES
CREATE TABLE dept_emp(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	dept_no VARCHAR(30),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	from_date VARCHAR(30),
	to_date VARCHAR(30)
);


-- DEPARTMENT MANAGERS
CREATE TABLE dept_manager(
	dept_no VARCHAR(30),
	FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	from_date VARCHAR(30),
	to_date VARCHAR(30)
	);
	
-- SALARIES
CREATE TABLE salaries(
	emp_no INT UNIQUE NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	salary INT,
	from_date VARCHAR(30),
	to_date VARCHAR(30)
);

-- TITLES
CREATE TABLE titles(
	emp_no INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	title VARCHAR(30),
	from_date VARCHAR(30),
	to_date VARCHAR(30)
);