Use scott;

SELECT SAL
FROM EMP
WHERE ENAME LIKE 'WARD';

SELECT "MR" || ENAME || "THANK YOU"
FROM EMP; 


SELECT ENAME,DEPTNO,JOB
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO = 10;


SELECT ENAME,DEPTNO
FROM EMP
WHERE DEPTNO =10 OR 
DEPTNO=20;




SELECT ENAME
FROM EMP
WHERE NOT DEPTNO = 10;


SELECT EMPNO,ENAME,SAL
FROM EMP
WHERE EMPNO IN (7839,7902) AND 
SAL > 2839;

-- MULTIPLE UTILISATION OF NOT AND OR = NOT IN
--  MULTIPLE UTILISATION OF OR = IN 

SELECT ENAME,SAL,DEPTNO
FROM EMP
WHERE DEPTNO NOT IN (10,20);

-- SYNTAX 
-- BETWEEN LOWER VALUE AND HIGHER VALUE 
-- DO NOT CHANGE VALUES IF GIVEN RANGE IN QUESTION
SELECT ENAME,SAL
FROM EMP
WHERE SAL BETWEEN 1000 AND 3000;

SELECT ENAME,SAL
FROM EMP
WHERE SAL NOT BETWEEN 1000 AND 3000;


-- IS OPERATOR IS USED FOR NULL VALUE IDENTIFICATION
SELECT *
FROM EMP
WHERE COMM IS NULL;


SELECT *
FROM EMP
WHERE COMM IS NOT NULL;

-- LIKE = PATTERN TO BE MATCHED 

SELECT EMP.*,SAL 
FROM EMP
WHERE ENAME LIKE 'S%';


SELECT EMP.*,SAL
FROM EMP
WHERE ENAME NOT LIKE 'S%';

-- ------------OPERATORS FINISHED-------------------

-- FUNCTIONS
--  Group by




