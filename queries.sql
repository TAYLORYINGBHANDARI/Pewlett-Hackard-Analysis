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