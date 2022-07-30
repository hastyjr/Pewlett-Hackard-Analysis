ctinct with Orderby to remove duplicate rows
-- Deliverable 1: The Number of Retiring Employees by Title
SELECT emp.emp_no,
       emp.first_name,
       emp.last_name,
       title.title,
       title.from_date,
       title.to_date
INTO retirement_titles
FROM employees as emp
INNER JOIN titles as title
ON (emp.emp_no = title.emp_no)
WHERE (emp.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
order by emp.emp_no;

SELECT * FROM retirement_titles ORDER by emp_no;

-- Use Dictinct with ORDER BY to remove duplicate rows
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title,
to_date
INTO unique_titles
FROM retirement_titles
WHERE to_date = '1999-01-01'
ORDER BY emp_no, title DESC;

SELECT * FROM unique_titles;

-- Retrieve the number of employees by their most recent job title who are about to retire.
SELECT COUNT(emp_no) as emp_no,
title
INTO retiring_titles
FROM unique_titles
GROUP BY title 
ORDER BY emp_no DESC;

SELECT * FROM retiring_titles ORDER BY emp_no DESC;

-- Deliverable 2: The Employees Eligible for the Mentorship Program
-- write a query to create a Mentorship Eligibility table that holds the employees who are eligible to participate in a mentorship program.
SELECT DISTINCT ON(emp.emp_no) emp.emp_no, 
    emp.first_name, 
    emp.last_name, 
    emp.birth_date,
    dept.from_date,
    dept.to_date,
    title.title
INTO mentorship_eligibilty
FROM employees as emp
Left outer Join dept_emp as dept
ON (emp.emp_no = dept.emp_no)
Left outer Join titles as title
ON (emp.emp_no = title.emp_no)
WHERE dept.to_date = '9999-01-01' 
	AND (emp.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp.emp_no;