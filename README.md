# Challange-09

## Data Modeling 

- ER diagram for the given data from all the 6 csv's has been uploaded as a seperate image file.

# Data Engineeing 
- Used the provided information to create a table schema for each of the six CSV files.

- Defined the Primary keys and Foreign keys in the schema file by carefully modelling the data from the provided CSV's 

### Primary keys and Foreign keys:
-A primary key is a column or set of columns in a table that uniquely identifies each row in the table. It is a constraint that enforces the integrity of the data by     ensuring that each row in the table has a unique identifier.
- Starting with the "Department" table, Primary key is dept_no.
- Second table is "Titles" with Primary key as title_id.
- Third table is "Employees" with Primary key as emp_no and Foreign key is emp_title_id with reference to the "Titles" table (titles_id).
- Fourth table is "Department employee" table with Composite keys as emp_no and dept_no as there is repetition of the employees with respect to a single department number. Foreign keys are emp_no and dept_no with reference to Employees table and Department table.
- Fifth table is Department Manager table, with Composite keys as dept_no and emp_no.
- Sixth table is Salaries, with Primary key as emp_no and Foreign key as emp_no with reference to Employees table.
- Ensured to create all the tables in the correct order so as to handle the foreign keys.


# Data Analysis 

- Listed the employee number, last name, first name, sex, and salary of each employee.

- Listed the first name, last name, and hire date for the employees who were hired in 1986.

- Listed the manager of each department along with their department number, department name, employee number, last name, and first name.

- Listed the department number for each employee along with that employee’s employee number, last name, first name, and department name.

- Listed first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

- Listed each employee in the Sales department, including their employee number, last name, and first name.

- Listed each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

- Listed the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).
