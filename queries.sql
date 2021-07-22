select*FROM departments;

SELECT*FROM dept_employees
SELECT*FROM dept_manager
SELECT*FROM employees
SELECT*FROM salaries
SELECT*FROM titles

-- 7.3.1 Query Dates

SELECT first_name,last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'

select first_name, last_name
from employees
where birth_date between '1952-01-01' and '1952-12-31'

select first_name,last_name
from employees
where birth_date between '1953-01-01' and '1953-12-31'

select first_name,last_name
from employees
where birth_date between '1954-01-01' and '1954-12-31'

select first_name,last_name
from employees
where birth_date between '1955-01-01' and '1955-12-31'

-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')

-- COUNT Retirement eligibility
SELECT COUNT(first_name)
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Select Into ,to create new table from TABLES 
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')


---check the table
SELECT*FROM retirement_info;

-----drop the table

DROP TABLE retirement_info;

-- Create new table for retiring employees
SELECT emp_no,first_name,last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
----check the table
SELECT*FROM retirement_info

-- 7.3.3 Joining departments and dept_manager tables

SELECT d.dept_name,
		dm.emp_no,
		dm.from_date,
		dm.to_date
FROM departments as d
INNER JOIN dept_manager as dm
ON d.dept_no=dm.dept_no;


-- Joining retirement_info and dept_emp tables
SELECT ri.emp_no,
		ri.first_name,
		ri.last_name,
		de.to_date
FROM retirement_info as ri
LEFT JOIN dept_employees as de
ON ri.emp_no=de.emp_no;

-- create CURRENT EMP TABLE WHILE LEFTJoining retirement_info and dept_emp tables
SELECT ri.emp_no,
		ri.first_name,
		ri.last_name,
		de.to_date
INTO current_emp
FROM retirement_info as ri
LEFT JOIN dept_employees as de
ON ri.emp_no=de.emp_no
WHERE de.to_date=('9999-01-01');

---how many employees are retiring from the Sales department?
----use COUNT and GROUP BY with joins to separate the employees into their departments
-- Employee count by department number
SELECT COUNT(ce.emp_no),de.dept_no
FROM current_emp as ce
LEFT JOIN dept_employees as de
ON ce.emp_no=de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;

----update the code and create a new table


SELECT COUNT(ce.emp_no),de.dept_no
INTO emp_count_de
FROM current_emp as ce
LEFT JOIN dept_employees as de
ON ce.emp_no=de.emp_no
GROUP BY de.dept_no
ORDER BY de.dept_no;

DROP TABLE emp_info CASCADE
----
----7.3.5 DELIEVERBALE 1
SELECT e.emp_no,
	e.first_name,
	e.last_name,
	e.gender,
	s.salary,
	de.to_date
INTO emp_info
FROM employees as e
INNER JOIN salaries as s
	ON (e.emp_no=s.emp_no)
INNER JOIN dept_employees as de
	ON (e.emp_no = de.emp_no) 
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
	AND (e.hire_date BETWEEN '1985-01-01' AND '1988-12-31')
	AND( de.to_date='9999-01-01');
	
--DELIEVERBAL 2 MANAGEMENT	
-- List of managers per department
SELECT  dm.dept_no,
        d.dept_name,
        dm.emp_no,
        ce.last_name,
        ce.first_name,
        dm.from_date,
        dm.to_date
INTO manager_info
FROM dept_manager as dm
	INNER JOIN departments as d
		ON (dm.dept_no=d.dept_no)
	INNER JOIN current_emp as ce
		ON (dm.emp_no=ce.emp_no)

--List 3: Department Retirees
SELECT ce.emp_no,
ce.first_name,
ce.last_name,
d.dept_name
-- INTO dept_info
FROM current_emp as ce
	INNER JOIN dept_employees AS de
		ON (ce.emp_no = de.emp_no)
	INNER JOIN departments AS d
		ON (de.dept_no = d.dept_no);
	

SELECT* FROM departments
WHERE dept_name='Sales'
--
