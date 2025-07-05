CREATE TABLE employee2(
employee_id INT PRIMARY KEY,
name VARCHAR(100),
Postion VARCHAR(100),
Designation VARCHAR(100),
Hire_date DATE,
Salary NUMERIC(10,2)
);

SELECT* FROM employee2;

INSERT INTO employee2(employee_id,name,postion,designation,hire_date,salary)
VALUES(1,'Ajit sharma', 'data analyst','Data science', '2022-05-10',65000.00 ),
	   	(2,'subhash', 'VLSI','Electronics', '2022-05-10',85000.00 ),
		   (3,'Dinesh', 'data analyst','Data science', '2022-05-10',65000.00 ),
		   (4,'DK Sharma', 'GET','Electrical', '2022-05-10',65000.00 ),
		   (5,'Rohit', 'SDE','IT', '2020-05-15',89000.00 );

		   
DELETE FROM employee2
WHERE employee_id=5;


ALTER TABLE employee2
DROP COLUMN salary;
 DROP TABLE IF EXISTS employee2;


TRUNCATE TABLE employee2;
TRUNCATE TABLE employee2 RESTART IDENTITY;