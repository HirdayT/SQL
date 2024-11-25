USE SCOTT;
SELECT ENAME
FROM EMP
WHERE SAL > (SELECT SAL
					FROM EMP
						WHERE ENAME = 'ADAMS');
                         
SELECT ENAME,SAL
FROM EMP 
WHERE SAL < (SELECT SAL 
					FROM EMP 
						 WHERE ENAME = 'KING');
                         
                         
                         
SELECT ENAME ,DEPTNO             
FROM EMP 
WHERE JOB = (SELECT JOB
					 FROM EMP 
							WHERE ENAME = 'JONES');            
                            
SELECT ENAME , JOB 
FROM EMP 
WHERE JOB = (SELECT JOB
					 FROM EMP
							WHERE ENAME = 'JAMES');
                            
                            
SELECT EMPNO , ENAME ,SAL*12
FROM EMP 
WHERE SAL*12> (SELECT SAL*12
						FROM EMP 
							  WHERE ENAME = 'WARD');
                              
                              
                              --                        
 SELECT HIREDATE, ENAME 
 FROM EMP 
 WHERE HIREDATE < (SELECT HIREDATE
							FROM EMP
								WHERE ENAME = 'SCOTT');
                                
                                
                                
SELECT ENAME ,HIREDATE
FROM EMP                                
WHERE HIREDATE > (SELECT HIREDATE
							FROM EMP 
								  WHERE JOB = 'PRESIDENT');    
                                  
                                  
SELECT ENAME , SAL 
FROM EMP
WHERE SAL<(SELECT SAL 
					FROM EMP
						 WHERE EMPNO = 7839) ;                                 
                              

SELECT *
FROM EMP
WHERE HIREDATE < (SELECT HIREDATE
					     FROM EMP
							  WHERE	ENAME = 'MILLER');                              
                              
                              

SELECT ENAME , EMPNO
FROM EMP
WHERE SAL> (SELECT SAL
			       FROM EMP
						 WHERE ENAME = 'ALLEN');
                         
                         
SELECT ENAME ,SAL
FROM EMP 
WHERE SAL > (SELECT SAL  
					FROM EMP
						 WHERE ENAME = 'MILLER')
       AND SAL< (SELECT SAL 
						FROM EMP 
                        WHERE ENAME = 'ALLEN');
                        
SELECT *
FROM EMP 
WHERE DEPTNO = '20'AND JOB = (SELECT JOB
									 FROM EMP
										   WHERE ENAME = 'SMITH') ;                       


SELECT *
FROM EMP
WHERE JOB = 'MANAGER ' AND DEPTNO = (SELECT DEPTNO
										   FROM EMP
												WHERE ENAME = 'TURNER');

SELECT ENAME ,HIREDATE
FROM EMP
WHERE HIREDATE > '1980-12-31'  AND HIREDATE < (SELECT HIREDATE
														FROM EMP
															  WHERE ENAME ='KING');                                              
 
 
SELECT SAL , ENAME , SAL*12 AS "ANNUAL SAL"
FROM EMP
WHERE SAL > '1500' AND SAL < (SELECT SAL
									  FROM EMP
											WHERE ENAME = 'BLAKE');
                                            
                                            
SELECT *
FROM EMP
WHERE SAL > (SELECT SAL 
					FROM EMP
						  WHERE ENAME = 'SCOTT')
			AND SAL < (SELECT SAL 
								FROM EMP
									WHERE ENAME ='KING');
                                            
                                            
SELECT ENAME 
FROM EMP
WHERE ENAME = 'A%' AND DEPTNO = (SELECT DEPTNO 
										FROM EMP 
											 WHERE ENAME ='BLAKE');                                            
                              
 SELECT NAME                              
                            
                            
SELECT *
FROM EMP;                            