USE SCOTT;
SELECT * 
FROM EMP;
SELECT ENAME,LOC
FROM EMP,DEPT
WHERE emp.deptno=dept.deptno;

SELECT DNAME ,SAL
FROM EMP,DEPT
WHERE EMP.DEPTNO = DEPT.DEPTNO AND JOB = 'ACCOUNTING';



SELECT DNAME, SAL*12,ENAME
FROM DEPT,EMP
WHERE (emp.deptno=dept.deptno) AND SAL > 2340 ;

SELECT ENAME ,DNAME 
FROM EMP,DEPT
WHERE DNAME = '%A%';


SELECT ENAME,DNAME
FROM EMP,DEPT
WHERE (emp.deptno=dept.deptno) AND JOB = 'SALESMAN';





SELECT JOB,DNAME
FROM EMP,DEPT
WHERE JOB = 'S%' AND DNAME = 'S%';


SELECT DNAME,MGR
FROM EMP,DEPT
WHERE (emp.deptno=dept.deptno) AND MGR = 7839; 



SELECT DNAME,HIREDATE
FROM EMP,DEPT
WHERE HIREDATE > '1983-12-31' AND JOB = 'ACCOUNTING' OR 'RESEARCH';




SELECT ENAME,DNAME
FROM EMP,DEPT
WHERE (emp.deptno=dept.deptno) AND EMP.DEPTNO = '10' OR '30' AND COMM IS NOT NULL;


SELECT DNAME ,EMPNO
FROM EMP,DEPT
WHERE EMPNO = 7839 OR 7902 AND LOC  = 'NEW YORK';

USE SCOTT;
-- SELECT ENAME, DNAME
-- FROM EMP, DEPT
-- WHERE EMP.DEPTNO+ = DEPT.DEPTNO+;
-- Cannot use fullouter join in mySQL

SELECT E1.ENAME ,E1.SAL, E2.ENAME,E2.SAL
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO;


SELECT E1.ENAME,E2.ENAME,E1.DEPTNO,E2.DEPTNO
FROM EMP E1 , EMP E2
WHERE E1.MGR=E2.EMPNO AND E1.JOB = 'CLERK';


SELECT E1.ENAME, E2.JOB AS "MANAGERS DESIGNATION"
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO AND E2.DEPTNO IN(10,30);

SELECT E1.ENAME ,E2.SAL
FROM EMP E1,EMP E2
WHERE E1.MGR = E2.EMPNO AND (E1.SAL AND E2.SAL >2300);


SELECT E1.ENAME, E2.HIREDATE
FROM EMP E1 ,EMP E2
WHERE E1.MGR = E2.EMPNO AND E1.HIREDATE < '1982-01-01';


SELECT E1.ENAME, E2.COMM
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO AND E1.JOB = 'SALESMAN' AND E2.DEPTNO = '30';


SELECT E1.ENAME , E2.ENAME,E1.SAL,E2.SAL AS "MANAGER'S SAL"
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO AND E1.SAL>E2.SAL;

SELECT E1.ENAME ,E2.ENAME
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO AND E1.JOB = E2.JOB;



SELECT E1.ENAME , E1.HIREDATE ,E2.ENAME , E2.HIREDATE
FROM EMP E1 , EMP E2
WHERE E1.MGR = E2.EMPNO AND E1.HIREDATE > E2.HIREDATE;

SELECT E1.ENAME ,E2.ENAME
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO AND E2.JOB = 'MANAGER';

SELECT E1.ENAME ,E2.ENAME,E1.SAL,E2.SAL
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO AND E1.DEPTNO IN (10,20) AND E1.SAL<E2.SAL;




SELECT E1.ENAME ,E2.ENAME
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO AND E1.JOB = E2.JOB;

SELECT E1.ENAME, E2.JOB
FROM EMP E1, EMP E2
WHERE E1.MGR =E2.EMPNO ;




SELECT E1.ENAME ,E2.SAL
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO AND E2.SAL = 
