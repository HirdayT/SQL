SELECT COUNT(*)
FROM EMP
GROUP BY DEPTNO;


SELECT SUM(SAL)
FROM EMP
GROUP BY JOB; 

SELECT COUNT(*)
FROM EMP
WHERE NOT JOB ='PRESIDENT'
GROUP BY (DEPTNO);


SELECT COUNT(*)
FROM EMP
WHERE JOB = 'MANAGER'
GROUP BY 'DEPT';


SELECT AVG(SAL)
FROM EMP
WHERE NOT DEPTNO = '20'
GROUP BY DEPTNO; 


SELECT COUNT(*)
FROM EMP
WHERE ENAME LIKE '%A%'
GROUP BY JOB;

SELECT 	COUNT(*),AVG(SAL)
FROM EMP
WHERE SAL > 2000
GROUP BY DEPTNO;


SELECT SUM(SAL),COUNT(*),DEPTNO
FROM EMP	
GROUP BY DEPTNO;


SELECT COUNT(*),MAX(SAL)
FROM EMP
GROUP BY JOB;


SELECT MAX(SAL)
FROM EMP
GROUP BY DEPTNO;


SELECT COUNT(SAL),SAL
FROM EMP
GROUP BY SAL;
