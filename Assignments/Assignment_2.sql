Use SCOTT;
SELECT sal*12
FROM emp
WHERE ename ='SMITH';

SELECT ename
FROM emp
WHERE job = 'CLERK';

SELECT sal 
FROM emp
WHERE job = 'SALESMAN';


SELECT ename
FROM emp
WHERE sal > 2000;

SELECT *
FROM emp
WHERE ename = 'JONES';

SELECT *
FROM emp
WHERE hiredate >'1981-01-01';


SELECT ename,sal,sal*12 AS "ANNUAL SALARY"
FROM emp
WHERE sal*12>12000;



SELECT empno
FROM emp
WHERE deptno = '30';

SELECT ename , hiredate
FROM emp
WHERE hiredate < '1981-01-01';

SELECT *
FROM emp
WHERE job = 'MANAGER';

SELECT ename ,sal
FROM emp
WHERE comm = '1400';

SELECT ename ,sal,comm
FROM emp
WHERE sal < comm;

SELECT empno
FROM Emp
WHERE hiredate < '1981-01-01';


SELECT *
FROM emp
WHERE job='analyst' ;



SELECT *
FROM emp
WHERE sal >'2000';
