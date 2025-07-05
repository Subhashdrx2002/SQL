DROP TABLE IF EXIST user;
CREATE TABLE IF NOT EXISTS users(
user_id SERIAL PRIMARY KEY,
username VARCHAR(50) NOT NULL,
email VARCHAR(100) NOT NULL,
age INT,
City VARCHAR(100)

);
INSERT INTO users(username,email,age,city)
VALUES ('john_doe', 'john.doe@example.com', 28, 'New York'),
('jane_smith', 'jane.smith@example.com', 34, 'Los Angeles'),
('michael_lee', 'michael.lee@example.com', 22, 'Chicago'),
('sarah_kim', 'sarah.kim@example.com', 29, 'Houston'),
('david_brown', 'david.brown@example.com', 31, 'Phoenix'),
('linda_white', 'linda.white@example.com', 26, 'Philadelphia'),
('robert_jones', 'robert.jones@example.com', 40, 'San Antonio'),
('emily_davis', 'emily.davis@example.com', 23, 'San Diego'),
('william_miller', 'william.miller@example.com', 37, 'Dallas'),
('olivia_clark', 'olivia.clark@example.com', 30, 'San Jose');

SELECT*FROM users
ORDER BY user_id ASC;

SELECT user_id,city FROM users;

UPDATE userS
SET age =22
WHERE username ='jane_smith';

UPDATE users
SET city ='Phoenix'
WHERE age>30;




--To cahnge the heading ot table 

ALTER TABLE users
RENAME COLUMN username TO Full_name;

--TO change the age column  data type from INT
ALTER TABLE users
ALTER Column age TYPE SMALLINT;

--TO add contraint NOT NULL to city COLumn
ALTER TABLE users
ALTER Column city SET NOT NULL;

ALTER TABLE users
ADD CONSTRAINT  age CHECK(age>=18);


