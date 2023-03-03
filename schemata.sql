DROP TABLE IF EXISTS departments;
DROP TABLE IF EXISTS dept_emp;
DROP TABLE IF EXISTS dept_manager;
DROP TABLE IF EXISTS employees;
DROP TABLE IF EXISTS salaries;
DROP TABLE IF EXISTS titles;

CREATE TABLE departments (
  dept_no character varying(5) NOT NULL,
  dept_name character varying(45) NOT NULL,
	PRIMARY KEY (dept_no)
  );
  
CREATE TABLE titles (
  title_id character varying(5) NOT NULL,
  title character varying(45) NOT NULL,
	PRIMARY KEY (title_id)
  );
  
CREATE TABLE employees (
  emp_no integer NOT NULL,
  emp_title_id character varying(7) NOT NULL,
  birth_date timestamp without time zone DEFAULT now() NOT NULL,
  first_name character varying(45) NOT NULL,
  last_name character varying(45) NOT NULL,
  Sex character varying(1) NOT NULL,
  hire_date timestamp without time zone DEFAULT now() NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_title_id) REFERENCES titles (title_id)
);

CREATE TABLE dept_emp (
  emp_no integer NOT NULL,
  dept_no character varying(5) NOT NULL,
	PRIMARY KEY (emp_no,dept_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)	
  );
  
 CREATE TABLE dept_manager (
  dept_no character varying(5) NOT NULL,
  emp_no integer NOT NULL,
	PRIMARY KEY (dept_no,emp_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
 );
 
 

CREATE TABLE salaries (
  emp_no integer NOT NULL,
  salary integer NOT NULL,
	PRIMARY KEY (emp_no),
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

ALTER DATABASE employee_db SET datestyle TO "ISO, MDY";