USE SCOTT;
SELECT *
FROM emp;
SELECT ename , sal*12 as "annual salary"
FROM emp;


SELECT ename , job, sal*6 AS "HAlf term salary"
FROM emp;

SELECT emp.*,sal *12 +2000 AS "ANNUAL BONUS"
FROM emp;

SELECT ename, sal,sal+sal*10/100 AS "SALE with HIKE"
FROM emp;


SELECT ename, sal, sal -sal*25/100
FROM emp;


SELECT ename , sal + sal*50/100
FROM emp;

SELECT ename , sal* 12 - sal*10/100 AS "ANNUAL WITH DECREMENT"
FROM emp;


SELECT sal+comm AS "NET COMMODITY"
FROM emp;


SELECT emp.* , sal *12 AS "ANNUAL SALARY"
FROM EMP;

SELECT ename,job,sal-100
FROM emp;


SELECT DISTINCT sal 
FROM emp;

SElECT DISTINCT sal,ename
FROM emp;


