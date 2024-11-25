USE SCOTT;
SELECT *
FROM EMP;
SELECT ENAME
FROM EMP
WHERE MGR = (SELECT EMPNO
						FROM EMP
								WHERE ENAME = 'KING');


SELECT ENAME
FROM EMP
WHERE EMPNO = (SELECT MGR
						FROM EMP
							   WHERE ENAME = 'SMITH');
                               
                               
 SELECT ENAME
FROM EMP
WHERE EMPNO = (SELECT MGR
						FROM EMP
                        WHERE EMPNO = (SELECT MGR
												FROM EMP
							                         WHERE ENAME = 'SMITH'));
                               
                               
SELECT DNAME 
FROM DEPT 
WHERE DEPTNO IN (SELECT DEPTNO 
						 FROM EMP
							   WHERE EMPNO IN (SELECT MGR 
														FROM EMP
                                                        WHERE ENAME ='JONES'));
                               
SELECT SAL 
FROM EMP
WHERE EMPNO = (SELECT MGR 
						FROM EMP
							    WHERE ENAME = 'MILLER');   
                                
                                
                                
SELECT LOC 
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
							FROM EMP
								  WHERE EMPNO = (SELECT MGR
														FROM EMP
															  WHERE EMPNO = (SELECT MGR 
																					FROM EMP
																						WHERE ENAME ='SMITH')));   
                                                                                        
                                                                                        
 SELECT ENAME 
 FROM EMP
 WHERE MGR IN (SELECT EMPNO
						FROM EMP
								WHERE ENAME = 'BLAKE');

SELECT COUNT(*) 
FROM EMP
WHERE MGR IN (SELECT EMPNO
						FROM EMP
							   WHERE ENAME = 'KING');                                
                               
SELECT *
FROM EMP
WHERE MGR IN (SELECT EMPNO
					  FROM EMP
								  WHERE ENAME ='JONES'); 
                               
SELECT ENAME 
 FROM EMP 
 WHERE MGR = (SELECT MGR
						FROM EMP
							    WHERE ENAME = 'BLAKE');
                                
                                
                                
SELECT COUNT(*)
FROM EMP
WHERE EMPNO IN (SELECT MGR
						FROM EMP
								WHERE ENAME ='FORD');
                                