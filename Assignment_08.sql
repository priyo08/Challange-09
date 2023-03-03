SELECT a.emp_no,a.last_name,a.first_name,a.sex, b.salary
FROM employees as a
	LEFT OUTER JOIN salaries as b
	on a.emp_no = b.emp_no
;

SELECT first_name, last_name, hire_date
FROM employees
WHERE extract(year from hire_date) = '1986';

SELECT a.dept_no, b.dept_name, a.emp_no, c.last_name, c.first_name
FROM dept_manager as a
	LEFT OUTER JOIN departments as b
	ON a.dept_no = b.dept_no
	LEFT OUTER JOIN employees as c
	ON a.emp_no = c.emp_no
;

SELECT a.dept_no, b.dept_name, a.emp_no, c.last_name, c.first_name
FROM dept_emp as a
	LEFT OUTER JOIN departments as b
	ON a.dept_no = b.dept_no
	LEFT OUTER JOIN employees as c
	ON a.emp_no = c.emp_no
;

SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
AND last_name LIKE 'B%';

SELECT a.emp_no, c.last_name, c.first_name, b.dept_name
FROM dept_emp as a
	INNER JOIN departments as b
	ON a.dept_no = b.dept_no
	AND b.dept_name = 'Sales'
	LEFT OUTER JOIN employees as c
	ON a.emp_no = c.emp_no
;

SELECT a.emp_no, c.last_name, c.first_name, b.dept_name
FROM dept_emp as a
	INNER JOIN departments as b
	ON a.dept_no = b.dept_no
	AND b.dept_name IN ('Sales','Development')
	LEFT OUTER JOIN employees as c
	ON a.emp_no = c.emp_no
;

SELECT last_name, count(last_name) as frequency_count
FROM employees
GROUP BY last_name
ORDER BY count(last_name) desc;

