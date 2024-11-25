SELECT *
FROM EMP;

SELECT *
FROM EMP
WHERE COMM IS NULL;

SELECT *
FROM EMP 
WHERE MGR IS NULL;

SELECT *
FROM EMP
WHERE JOB = 'SALESMAN' AND 
DEPTNO = 30;

SELECT *
FROM EMP
WHERE SAL > 1500 AND 
DEPTNO = 30 AND 
JOB = 'SALESMAN'; 


SELECT *
FROM EMP 
WHERE ENAME LIKE 'S%' OR 
ENAME LIKE 'A%';


SELECT *
FROM EMP
WHERE DEPTNO NOT IN(10,20);

SELECT *
FROM EMP
WHERE ENAME NOT LIKE 'S%';

SELECT *
FROM EMP
WHERE MGR IS NOT NULL AND DEPTNO = 10;


SELECT *
FROM EMP
WHERE COMM IS NULL AND
JOB = 'CLERK';


SELECT *
FROM EMP
WHERE MGR IS NULL 
AND DEPTNO IN (10,30);


SELECT *
FROM EMP
WHERE JOB = 'SALESMAN' AND 
DEPTNO = 30 AND
SAL > 2450 ;


SELECT *
FROM EMP 
WHERE JOB = 'ANALYST' AND
DEPTNO = 20 AND
SAL > 2500;


SELECT *
FROM EMP
WHERE ENAME LIKE 'M%' OR 
ENAME LIKE 'J%'; 


SELECT EMP.*,SAL*12 ANNUALSAL
FROM EMP 
WHERE NOT DEPTNO =30;



SELECT *
FROM EMP
WHERE ENAME NOT LIKE '%ES' AND
ENAME NOT LIKE '%R';


SELECT EMP.*, SAL +(SAL*10/100)
FROM EMP
WHERE MGR IS NOT NULL AND
DEPTNO = 10; 




SELECT *
FROM EMP
WHERE JOB = 'SALESMAN' AND
ENAME LIKE '%E'AND
SAL LIKE '____';



SELECT *
FROM EMP
WHERE hiredate > '1981-12-31';

SELECT *
FROM EMP 
WHERE HIREDATE LIKE '%%%%-02-%%';


SELECT *
FROM EMP
WHERE JOB NOT IN ('MANAGER','CLERK')AND
DEPTNO IN (10,20) AND
SAL BETWEEN 1000 AND 3000;



