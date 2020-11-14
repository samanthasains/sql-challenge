--Create title table, set title_id as primary key
CREATE TABLE titles (
    title_id VARCHAR(30),
    title VARCHAR(30),
    PRIMARY KEY (title_id)
);

--Create employee table, set emp_no as primary key and emp_title_id as foreign key
CREATE TABLE employees (
    emp_no VARCHAR(10),
    emp_title_id VARCHAR(10),
    birth_date DATE,
    first_name VARCHAR(20),
    last_name VARCHAR(20),
    sex CHAR(1),
    hire_date DATE,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_title_id) REFERENCES Titles(title_id)
);

--Create Departments table, set dept_no as primary key
CREATE TABLE departments (
    dept_no VARCHAR(30),
    dept_name VARCHAR(30),
    customer_id INTEGER,
    PRIMARY KEY (dept_no)
);

--Create Department Manager table, set dept_no as primary key and dept_no and emp_no as foreign keys
CREATE TABLE department_manager (
    dept_no VARCHAR(30),
    emp_no VARCHAR(30),
    PRIMARY KEY (dept_no, emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);

--Create Department Employees table, set emp_no as primary key and emp_no and dept_no as foreign keys
CREATE TABLE dept_employees (
    emp_no VARCHAR(30),
    dept_no VARCHAR(30),
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
    FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);

--Create Salaries table, set emp_no as primary key and emp_no as foreign key
CREATE TABLE salaries (
    emp_no VARCHAR(30),
    salary INT,
    PRIMARY KEY (emp_no),
    FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);