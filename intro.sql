-- Active: 1693563369306@@127.0.0.1@5432@test2
-- ##CREATE DATABASE
-- CREATE DATABASE databaseName;

-- ##RENAME DATABASE
-- ALTER DATABASE db1 RENAME TO db2;

-- ##DROP DATABASE
-- DROP DATABASE db1;

-- ## CREATE a student TABLE

-- CREATE TABLE student(
--     student_id INT,
--     firt_name VARCHAR(50),
--     last_name VARCHAR(50),
--     cgpa NUMERIC(1,2)
-- )

-- ## RENAME a table name
-- ALTER TABLE student RENAME TO learners;

-- ## DELETE a TABLE
-- DROP TABLE learners;

--# create a table with CONSTRAINTS
-- CREATE TABLE users (
--     user_id SERIAL PRIMARY KEY,
--     user_name VARCHAR(255) UNIQUE NOT NULL,
--     email VARCHAR(255) UNIQUE NOT NULL,
--     age INT DEFAULT 18
-- )

-- ## Insertion No-1
-- INSERT INTO users (user_id,user_name,email,age) VALUES(2,'Parvez','parvez@gmail.com',23);

-- ## Insertion No-2
-- INSERT INTO users (user_name,email) 
-- VALUES
-- ('Yasin','yasin@gmail.com'),
-- ('Ashik','ashik@gmail.com');

-- ## Insertion No-3
-- INSERT INTO users 
-- VALUES
-- (1,'Yasin','yasin@gmail.com'),
-- (2,'Ashik','ashik@gmail.com');

-- INSERT INTO users 
-- VALUES
-- (1,'Yasin','yasin@gmail.com'),
-- (2,'Ashik','ashik@gmail.com');

-- ## delete all rows in a table without deleting the TABLE
-- TRUNCATE TABLE users;

-- ## ALTER TABLE
-- add a column,drop a column,change datatype fo a clomun,rename a COLUMN, set --DEFAULT value for a COLUMN, add CONSTRANT to a COLUMN,drop CONSTRANT for a COLUMN,--table RENAME.

--## add a new column
-- ALTER TABLE users
-- ADD COLUMN password VARCHAR(255) DEFAULT 'admin123' NOT NULL;

--## DRop a column
-- ALTER TABLE users
-- DROP COLUMN age;

-- ALTER TABLE users add COLUMN demo INT;

-- ## change datatype of a COLUMN
-- ALTER TABLE users 
--     ALTER COLUMN demo type TEXT;

-- ## set DEFAULT VALUES
-- ALTER TABLE users 
--     alter COLUMN demo set DEFAULT 'Bangladesh';

-- Remove DEFAULT VALUES
-- ALTER TABLE users 
--     alter COLUMN demo DROP DEFAULT;

-- ## RENAME a COLUMN
-- ALTER TABLE users 
-- RENAME COLUMN demo to country;

-- add a CONSTRAINT
-- ALTER Table users
-- ALTER COLUMN country set NOT NULL;

-- ## Drop a CONSTRAINT
-- ALTER Table users
-- ALTER COLUMN country DROP NOT NULL;

-- ## add a Unique CONSTRAINT
-- ALTER TABLE users 
-- ADD CONSTRAINT unique_email UNIQUE(email);

-- ## DELETE a CONSTRAINT
-- ALTER TABLE users 
-- DROP CONSTRAINT unique_email;

-- INSERT INTO users VALUES(5,'Shakil','shakil@gmail.com');

-- TRUNCATE TABLE users ;

-- SELECT * FROM users;


-- ## create department TABLE
-- CREATE TABLE Department (
--     deptId SERIAL PRIMARY KEY,
--     deptName VARCHAR(50)
-- );

-- INSERT INTO Department VALUES(1,'IT');
-- SELECT * FROM Department;


-- -- ## create employe table
-- CREATE TABLE Employe (
--     employeId SERIAL PRIMARY KEY,
--     employeName VARCHAR(50) NOT NULL,
--     departmentId  INT,
--     CONSTRAINT fk_constraint_department
--         FOREIGN KEY(departmentId)
--         REFERENCES Department(deptId)
-- );

-- INSERT INTO Employe VALUES(1,'Parvez',1);

-- SELECT * FROM Employe;


-- CREATE TABLE Courses (
--     course_id SERIAL PRIMARY KEY,
--     course_name VARCHAR(255) NOT NULL,
--     description VARCHAR(255),
--     published_date DATE
-- );

-- INSERT INTO Courses(course_name, description, published_date)
--     VALUES
--     ('PostgressQL for Developers','A complete PostgressQL for Developer','2023-09-02'),
--     ('SQL for Developers','A complete SQL for Developer',NULL),
--     ('PostgressQL High Performence',NULL,NULL)

-- SELECT * FROM Courses;

-- -- ## UPDATE Courses

-- UPDATE Courses 
-- set
-- course_name = 'PostgressQl for Beginners',
-- description= 'Dummy text'
-- WHERE course_id > 2;

-- DELETE FROM Courses 
-- WHERE course_id = 3;



-- CREATE TABLE IF NOT EXISTS departments (
--     deptId SERIAL PRIMARY KEY,
--     name TEXT NOT NULL
-- );

-- INSERT INTO departments (name) VALUES
-- ('Software Developer'),
-- ('Database Developer'),
-- ('IT Support'),
-- ('Graphic Designer'),
-- ('UX Designer'),
-- ('Project Manager'),
-- ('Cloud Management'),
-- ('Network Operations'),
-- ('System Administration'),
-- ('Quality Assurance')

-- CREATE TABLE IF NOT EXISTS employes (
--     empId SERIAL PRIMARY KEY,
--     name TEXT NOT NULL,
--     email TEXT NOT NULL,
--     salary INTEGER NOT NULL,
--     joining_date DATE NOT NULL,
--     deptId INTEGER NOT NULL,
--     CONSTRAINT fk_deptId
--         FOREIGN KEY(deptId)
--         REFERENCES departments(deptId)
-- );

-- INSERT INTO employes (name,email,salary,joining_date, deptId)
-- VALUES
-- ('Parvez','parvez@gmail.com',80000,'2021-08-01',1),
-- ('Abir','abir@gmail.com',90000,'2020-01-01',1),
-- ('Shakil','shakil@gmail.com',21000,'2022-08-01',4),
-- ('Yasin','yasin@gmail.com',20000,'2021-08-01',2),
-- ('Ashik','ashik@gmail.com',17000,'2021-08-01',3),
-- ('Rahat','rahat@gmail.com',18000,'2021-08-01',5),
-- ('Putul','putul@gmail.com',12000,'2021-08-01',6),
-- ('Sumaya','sumaya@gmail.com',16000,'2021-08-01',7),
-- ('Majid','majid@gmail.com',19000,'2021-08-01',8),
-- ('Hamid','hamid@gmail.com',11000,'2021-08-01',9),
-- ('Sabbir','sabbir@gmail.com',9000,'2021-08-01',10),
-- ('Hridoy','hridoy@gmail.com',12000,'2021-08-01',4),
-- ('Rocky','rocky@gmail.com',11000,'2021-08-01',7),
-- ('Bipul','bipul@gmail.com',12000,'2021-08-01',3),
-- ('Shouvik','shouvik@gmail.com',10000,'2021-08-01',5)


-- SELECT * FROM employes;
-- SELECT * FROM departments;

-- SELECT employes.name,employes.salary, departments.name 
-- FROM employes
-- INNER JOIN departments ON departments.deptId = employes.deptId

-- SELECT name,email FROM employes;
-- SELECT * FROM employes
-- WHERE salary > 10000 AND salary < 90000

-- SELECT * FROM employes
-- WHERE joining_date > '2020-01-01';
-- SELECT * FROM employes
-- WHERE name <> 'Parvez';

-- SELECT * FROM employes
-- ORDER BY name ASC LIMIT 5 OFFSET 3;
-- SELECT * FROM employes
-- ORDER BY name DESC;

-- SELECT * FROM employes
-- ORDER BY salary DESC LIMIT 1;

-- SELECT * FROM employes
-- ORDER BY salary DESC
-- LIMIT 1 OFFSET 2;

-- ## IN,NOT IN,BTWEEN,LIKE

-- # IN
-- SELECT * FROM employes
-- WHERE empId IN(2,3,4);

-- # NOT IN
-- SELECT * FROM employes
-- WHERE empId NOT IN(2,3,4);

-- # BETWEEN
-- SELECT * FROM employes
-- WHERE salary BETWEEN 80000 AND 90000;

-- # LIKE
-- SELECT * FROM employes
-- WHERE name LIKE '%a%';
-- SELECT * FROM employes
-- WHERE name LIKE 'A%';
-- SELECT * FROM employes
-- WHERE name LIKE '%a';
-- SELECT * FROM employes
-- WHERE name LIKE '__a__%';
-- SELECT * FROM employes
-- WHERE name LIKE 'A%r';