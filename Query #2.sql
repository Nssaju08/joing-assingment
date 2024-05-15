CREATE DATABASE assingment;
USE DATABASE assingment;

CREATE TABLE employee(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    NAME VARCHAR(40),
    mobile INT (11),
    salary INT (30)
);


INSERT INTO employee (NAME,mobile,salary) 
VALUES('nazim',017252,10000),
('arafat',0175277,30000),
('muttakin',0197673,20000),
('sazadul',01733727,35000),
('nazmul',0152723,20000);

SELECT * FROM employee;

CREATE TABLE employee_info(
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    emp_id INT NOT NULL,
    address VARCHAR(40),
    section VARCHAR(11),
    FOREIGN KEY (emp_id) REFERENCES employee(id)
);


INSERT INTO employee_info (emp_id,address,section)
VALUES(1,'pabna','testing'),
(3,'pabna bera','testing'),
(5,'pabna ','cutting');

SELECT * FROM employee_info;

SELECT * FROM  employee,employee_info  
WHERE employee.id=employee_info.emp_id;

SELECT employee.NAME,employee_info.address FROM  
employee,employee_info  
WHERE employee.id=employee_info.emp_id;


SELECT t1.NAME,t2.address FROM  
employee AS t1,employee_info AS t2  
WHERE t1.id=t2.emp_id;


-- INNER JOIN

SELECT t1.*,t2.* FROM  
employee AS t1 INNER JOIN employee_info AS t2  
ON t1.id=t2.emp_id;

-- LEFT JOIN

SELECT t1.*,t2.* FROM  
employee AS t1 LEFT JOIN employee_info AS t2  
ON t1.id=t2.emp_id;


-- RIGHT JOIN

SELECT t1.*,t2.* FROM  
employee AS t1 RIGHT JOIN employee_info AS t2  
ON t1.id=t2.emp_id;


SELECT t1.*,t2.* FROM  
employee_info AS t2 RIGHT JOIN employee AS t1  
ON t1.id=t2.emp_id;


-- FULL JOIN

SELECT t1.*,t2.* FROM  
employee AS t1 FULL OUTER JOIN employee AS t2  
ON t1.id=t2.emp_id WHERE t1.id < 4;


SELECT * FROM  employee,employee_info,table_3  
WHERE employee.id=employee_info.emp_id
AND employee.id=table_3.emp_id;example