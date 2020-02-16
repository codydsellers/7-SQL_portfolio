CREATE TABLE departments (
	dept_no VARCHAR(30),
	dept_name VARCHAR(30),
	PRIMARY KEY (dept_no)
)


CREATE TABLE employees (
	emp_no INTEGER,
	birth_date VARCHAR(30),
	first_name VARCHAR(30),
	last_name VARCHAR(30),
	gender VARCHAR(30),
	hire_date VARCHAR(30),
	PRIMARY KEY (emp_no)
)

CREATE TABLE dept_emp (
	dept_emp_key SERIAL,
	emp_no INTEGER,
	dept_no VARCHAR(30),
	from_date VARCHAR(30),
	to_date VARCHAR(30),
	PRIMARY KEY (dept_emp_key),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
)

ALTER TABLE dept_emp ADD dept_emp_key SERIAL PRIMARY KEY;

CREATE TABLE dept_manager (
	dept_no VARCHAR(30),
	emp_no INTEGER,
	from_date VARCHAR(30),
	to_date VARCHAR(30),
	PRIMARY KEY (dept_manager_key),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)

ALTER TABLE dept_manager ADD dept_manager_key SERIAL PRIMARY KEY;
SELECT * FROM dept_manager;

CREATE TABLE salaries (
	salaries_key SERIAL,
	emp_no INTEGER,
	salary INTEGER,
	from_date VARCHAR(30),
	to_date VARCHAR(30),
	PRIMARY KEY (salaries_key),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)

ALTER TABLE salaries ADD salaries_key SERIAL PRIMARY KEY;
SELECT * FROM salaries;

CREATE TABLE titles (
	titles_key SERIAL,
	emp_no INTEGER,
	title VARCHAR(30),
	from_date VARCHAR(30),
	to_date VARCHAR(30),
	PRIMARY KEY (titles_key),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
)

ALTER TABLE titles ADD titles_key SERIAL PRIMARY KEY;
SELECT * FROM titles;