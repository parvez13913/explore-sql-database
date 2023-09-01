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
CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    user_name VARCHAR(255) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    age INT DEFAULT 18
)

insert into users VALUES(1,'abc','abc@gmail.com');
select * from users;

