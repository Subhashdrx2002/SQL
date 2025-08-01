SELECT * FROM employees8;


-- 1) Retrieve employees whose salary is between 40,000 and 60,000. - Use BETWEEN Operators

SELECT first_name, last_name, salary 
FROM employees8
WHERE salary BETWEEN 40000 AND 60000;


-- 2) Find employees whose email addresses end with gmail.com - Use LIKE Operators

SELECT first_name, last_name, email 
FROM employees8
WHERE email LIKE '%@gmail.com';


SELECT first_name FROM employees8
WHERE first_name LIKE '%j%';


-- 3) Retrieve employees who belong to either the 'Finance' or 'Marketing' departments-- Use IN Operator

SELECT first_name, last_name, department
FROM employees8
WHERE department IN ('Finance','Marketing', 'IT');
