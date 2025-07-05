--create table
CREATE TABLE students(
Student_id SERIAL PRIMARY KEY,
name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE,
age INTEGER CHECK(Age>18),
regestration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

--Insert date into table
INSERT INTO students(student_id,name, email, age)
VALUES(1,'SUBHASH','subhash7042848121@gmail.com',25);



INSERT INTO students(student_id,name, email, age)
VALUES(2,'SUBHASH','subhash17042848121@gmail.com',25);

--output of table
SELECT*FROM students;