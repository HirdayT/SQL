USE SCOTT;

SELECT SAL
FROM EMP E1
WHERE(SELECT COUNT(DISTINCT SAL)
FROM EMP E2
WHERE E1.SAL < E2.SAL)= 7-1;