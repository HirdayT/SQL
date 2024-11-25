CREATE DATABASE class;
USE class;
CREATE TABLE student(
rollno INT PRIMARY KEY,
name VARCHAR(50)
);

SELECT * FROM student;


INSERT INTO student
(rollno , name)
VALUES
(100,'HARI'),
(102,'SHAR'),
(103,'NAM');

INSERT INTO student
VALUES
(104,'hari');

CREATE DATABASE XYZ;
CREATE TABLE EMP(
id INT PRIMARY KEY,
name VARCHAR(100),
salary NUMERIC
);
INSERT INTO EMP
(id,name,salary)
VALUES
(1,'adam',1000),
(2,'bob',20000),
(3,'casey',40000);

SELECT * FROM EMP;

