-- Drop the table if it already exists
DROP TABLE IF EXISTS employees8;
-- Create the employees table
CREATE TABLE employees8 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary DECIMAL(10, 2) CHECK (salary > 0),
    joining_date DATE NOT NULL,
    age INT CHECK (age >= 18)
);
SELECT * FROM employees8;

-- Insert data into employees table
INSERT INTO employees8 (first_name, last_name, department, salary, joining_date, age) VALUES
('Amit', 'Sharma', 'IT', 60000.00, '2022-05-01', 29),
('Neha', 'Patel', 'HR', 55000.00, '2021-08-15', 32),
('Ravi', 'Kumar', 'Finance', 70000.00, '2020-03-10', 35),
('Anjali', 'Verma', 'IT', 65000.00, '2019-11-22', 28),
('Suresh', 'Reddy', 'Operations', 50000.00, '2023-01-10', 26);


--Q1 Retrive the first_name , salary and   calculate 10% bonous on salary
SELECT first_name , salary,
		(salary*0.15) AS BONOUS
			FROM employees8;

--Q2 calculate the annual salary and salary increment by 5% show new salary as well
SELECT first_name , salary,
			(salary *12) AS annual_salary,
			(salary *0.05) AS Increment_salary,
			(salary +salary *0.05 ) AS new_salary,
			(salary *1.05 ) AS new_salary2
FROM employees8;
			
