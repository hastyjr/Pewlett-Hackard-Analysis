SELECT *
FROM departments;

SELECT *
FROM employees;

SELECT *
FROM dept_manager;

SELECT *
FROM salaries;

SELECT *
FROM dept_emp;

SELECT *
FROM titles;

-- Determine Retirement Eligibility
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';

-- search for only 1952 birth dates.
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1952-12-31';

-- skill drill - three more queries to search for employees who were born in 1953, 1954, and 1955.
-- 1953
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1953-01-01' AND '1953-12-31';

-- 1954
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1954-01-01' AND '1954-12-31';

-- 1955
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1955-01-01' AND '1955-12-31';

-- Narrow the Search for Retirement Eligibility
-- Retirement eligibility
SELECT first_name, last_name
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Count the Queries
SELECT COUNT(first_name)
FROM employees
WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

-- Create New Tables
SELECT first_name, last_name
INTO retirement_info
FROM employees
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');

SELECT *
FROM retirement_info;
