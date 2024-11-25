SELECT COUNT(*),DEPTNO
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*)>=3;

-- SELECT COUNT(*)
-- FROM EMP
-- WHERE JOB = 'CLERK'
-- GROUP BY DEPTNO
-- HAVING COUNT(*) >= 2;

SELECT DEPTNO,SUM(SAL)
FROM EMP
GROUP BY DEPTNO
HAVING COUNT(*) >= 4;




SELECT SUM(SAL),COUNT(*),JOB
FROM EMP
WHERE SAL>1200
GROUP BY JOB
HAVING SUM(SAL)>1800;


SELECT DEPTNO,COUNT(*)
FROM EMP
WHERE JOB = 'MANAGER'
GROUP BY DEPTNO
HAVING COUNT(*) >=2 ;


SELECT JOB,MAX(SAL)
FROM EMP
GROUP BY JOB
HAVING MAX(SAL)>2000;

SELECT SAL,COUNT(*)
FROM EMP
GROUP BY SAL
HAVING COUNT(SAL)>=2;




SELECT HIREDATE,COUNT(*)
FROM EMP
GROUP BY HIREDATE
HAVING COUNT(*)>=2;

SELECT AVG(SAL)
FROM EMP
GROUP BY SAL
HAVING AVG(SAL) < 3000;


SELECT DEPTNO 
FROM EMP
WHERE ENAME LIKE '%S%' OR ENAME LIKE '%A%'
GROUP BY DEPTNO
HAVING COUNT(*) >=3;


SELECT MAX(SAL),MIN(SAL),JOB
FROM EMP
GROUP BY JOB
HAVING MIN(SAL) > 1000 AND MAX(SAL) <5000;


