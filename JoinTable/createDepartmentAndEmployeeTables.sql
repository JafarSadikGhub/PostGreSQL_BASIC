CREATE TABLE departments (
    dept_id BIGSERIAL,
    dept VARCHAR(100),
    city VARCHAR(100),
    CONSTRAINT dept_key PRIMARY KEY(dept_id),
    CONSTRAINT dept_city_unique UNIQUE(dept, city)
);
CREATE TABLE employees (
    emp_id BIGSERIAL,
    first_name VARCHAR(100),
    last_name VARCHAR(100),
    salary INTEGER,
    CONSTRAINT emp_key PRIMARY KEY(emp_id),
    CONSTRAINT emp_dept_unique UNIQUE(emp_id, dept_id)
);