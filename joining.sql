CREATE TABLE IF NOT EXISTS departmentt (
    deptId SERIAL PRIMARY KEY,
    dept_name TEXT NOT NULL
);

INSERT INTO departmentt (dept_name) VALUES
('Software Developer'),
('Database Developer'),
('IT Support'),
('Graphic Designer'),
('UX Designer'),
('Project Manager'),
('Cloud Management'),
('Network Operations'),
('System Administration'),
('Quality Assurance')

CREATE TABLE IF NOT EXISTS employee (
    empId SERIAL PRIMARY KEY,
    emp_name TEXT NOT NULL,
    email TEXT NOT NULL,
    salary INTEGER NOT NULL,
    joining_date DATE NOT NULL,
    deptId INTEGER NOT NULL,
    CONSTRAINT fk_deptId
        FOREIGN KEY(deptId)
        REFERENCES departmentt(deptId)
);

INSERT INTO employee (emp_name,email,salary,joining_date, deptId)
VALUES
('Parvez','parvez@gmail.com',80000,'2021-08-01',1),
('Abir','abir@gmail.com',90000,'2020-01-01',1),
('Shakil','shakil@gmail.com',21000,'2022-08-01',4),
('Yasin','yasin@gmail.com',20000,'2021-08-01',2),
('Ashik','ashik@gmail.com',17000,'2021-08-01',3),
('Rahat','rahat@gmail.com',18000,'2021-08-01',5),
('Putul','putul@gmail.com',12000,'2021-08-01',6),
('Sumaya','sumaya@gmail.com',16000,'2021-08-01',7),
('Majid','majid@gmail.com',19000,'2021-08-01',8),
('Hamid','hamid@gmail.com',11000,'2021-08-01',9),
('Sabbir','sabbir@gmail.com',9000,'2021-08-01',10),
('Hridoy','hridoy@gmail.com',12000,'2021-08-01',4),
('Rocky','rocky@gmail.com',11000,'2021-08-01',7),
('Bipul','bipul@gmail.com',12000,'2021-08-01',3),
('Shouvik','shouvik@gmail.com',10000,'2021-08-01',5)


SELECT * FROM employee;
SELECT * FROM departmentt;

-- ## INNER JOIN
-- SELECT employes.name,employes.salary, departments.name 
-- FROM employes
-- INNER JOIN departments ON departments.deptId = employes.deptId

-- ## LEFT JOIN
-- SELECT employes.name,employes.salary, departments.name 
-- FROM employes
-- LEFT JOIN departments ON departments.deptId = employes.deptId;

-- ## Right JOIN
-- SELECT employes.name,employes.salary, departments.name 
-- FROM employes
-- RIGHT JOIN departments ON departments.deptId = employes.deptId;

-- ## FULL JOIN
-- SELECT employes.name,employes.salary, departments.name 
-- FROM employes
-- FULL JOIN departments ON departments.deptId = employes.deptId;