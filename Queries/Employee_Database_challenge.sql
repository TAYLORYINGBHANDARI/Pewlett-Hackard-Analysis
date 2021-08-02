SELECT*FROM retiring_emp_by_title
SELECT*FROM retiring_titles

SELECT em.emp_no,em.first_name,em.last_name,
	 ti.title,ti.from_date,ti.to_date
INTO retiring_emp_by_title
FROM employees AS em
lEFT JOIN titles as ti
	ON (em.emp_no=ti.emp_no)
WHERE (em.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY em.emp_no;

-- Use Dictinct with Orderby to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
				first_name,
				last_name,
				title
INTO unique_titles
FROM retiring_emp_by_title
ORDER BY emp_no ASC, to_date DESC;
--to retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(title), title
INTO retiring_titles
FROM unique_titles 
GROUP BY title
ORDER BY COUNT(title) DESC;

--Deliverable 2: The Employees Eligible for the Mentorship Program
SELECT*FROM TITLES

SELECT DISTINCT ON (emp_no) em.emp_no, em.first_name, em.last_name, em.birth_date,
					dm.from_date,dm.to_date,ti.title
INTO mentorshop_eligibility
FROM employees as em
INNER JOIN dept_employees as dm
		ON (em.emp_no=dm.emp_no)
INNER JOIN titles as ti	
		ON (em.emp_no=ti.emp_no)
WHERE (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (ti.to_date='9999-01-01')
ORDER BY em.emp_no ASC;

SELECT*FROM mentorshop_eligibility

---count total emp on retiring titles

SELECT SUM(count) COUNT
--INTO 
FROM retiring_titles

--count total emp on mentorship_eligibilty
SELECT COUNT(emp_no) emp_no
FROM mentorshop_eligibility;
---total emp in whole company
SELECT count(emp_no) emp_no
FROM employees

----count total emp on mentorship_eligibilty by title
SELECT COUNT(emp_no) emp_no, title
--INTO 
FROM mentorshop_eligibility
GROUP BY title
ORDER BY COUNT(title) DESC;




