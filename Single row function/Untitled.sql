-- Give a count of no. of character present in name
-- FRom DUal = dummy table with 1 row and 1 column
Select Length(ENAME);

-- SELECT CONCAT('MR',ENAME);
-- FROM EMP;


SELECT UPPER('PAGAL')
FROM DUAL;

USE SCOTT;
SELECT LOWER(ENAME)
FROM EMP;

SELECT REVERSE(ENAME)
FROM EMP;

SELECT SUBSTR(ENAME, 2)
FROM EMP;


SELECT SUBSTR('Qspiders', 2,4)-- --//wriete a query to extract thefirst three charcaters of emp name)
FROM dual;

SELECT SUBSTR(ENAME, 1,3)
FROM EMP;



SELECT rename(ENAME, 2)
FROM EMP;


-- SELECT replace('banana', 'a')
-- FROM dual;


-- select instr('banana','n',1,2)
-- from dual;


select ename,sal
from emp
where mod(sal,3)=0;


select *
from emp
where mod(empno,2)!=0);



