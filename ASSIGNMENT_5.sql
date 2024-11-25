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
WHERE ENAME LIKE 'A%' AND DEPTNO = (SELECT DEPTNO 
										FROM EMP 
											 WHERE ENAME ='BLAKE');                                            
                              
 SELECT *
 FROM emp
 WHERE JOB ='clerk' AND deptno = (SELECT deptno 
										  FROM emp
												WHERE ENAME = 'turner');
                                                
SELECT ENAME, SAL,JOB
FROM EMP
WHERE SAL*12 > (SELECT SAL*12 
					FROM EMP
						 WHERE ENAME = 'SMITH')
											AND SAL*12 < (SELECT SAL*12 
																	FROM EMP
																		WHERE ENAME = 'KING');       
                                        
                                        
 SELECT DNAME 
 FROM DEPT
 WHERE DEPTNO = (SELECT DEPTNO
						FROM EMP
						     WHERE ENAME = 'SMITH');
                            
SELECT DNAME, LOC
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
						FROM EMP
							  WHERE ENAME = 'KING');


SELECT LOC 
FROM DEPT 
WHERE DEPTNO = (SELECT DEPTNO
						FROM EMP
							WHERE EMPNO = '7902') ;      
                            
                            
 SELECT DNAME,LOC,DEPTNO
 FROM DEPT 
 WHERE DEPTNO IN (SELECT DEPTNO
						 FROM EMP
							   WHERE ENAME LIKE '%R');
                               
 
 SELECT DNAME
 FROM DEPT
 WHERE DEPTNO = (SELECT DEPTNO
						 FROM EMP
							  WHERE JOB = 'PRESIDENT');
                              
                              
 SELECT ENAME 
 FROM EMP
 WHERE DEPTNO = (SELECT DEPTNO
						 FROM DEPT
							  WHERE DNAME = 'ACCOUNTING');
                              
  SELECT ENAME SAL
  FROM EMP
  WHERE DEPTNO = (SELECT DEPTNO
					      FROM DEPT
						        WHERE LOC = 'CHICAGO');
                                
 SELECT *
 FROM EMP
 WHERE DEPTNO = (SELECT DEPTNO
						 FROM DEPT
								WHERE DNAME = 'SALES' );


SELECT * , SAL*12
FROM EMP 
WHERE DEPTNO = (SELECT DEPTNO 
						FROM DEPT
							WHERE LOC = 'NEW YORK');
                            
                            
                            
SELECT ENAME 
FROM EMP 
WHERE DEPTNO = (SELECT DEPTNO 
						FROM DEPT
							WHERE DNAME = 'OPERATIONS');
                            
                            
SELECT *
FROM EMP
WHERE JOB = 'MANAGER' AND DEPTNO = (SELECT DEPTNO
											FROM DEPT
												 WHERE LOC = 'CHICAGO')  ;                          
                            
 SELECT ENAME , SAL                            
FROM EMP
WHERE SAL > (SELECT SAL
					 FROM EMP
							WHERE ENAME = 'KING') 
											AND DEPTNO = (SELECT DEPTNO
																FROM DEPT
																	  WHERE DNAME = 'ACCOUNTING');

SELECT *
FROM EMP 
WHERE JOB = 'SALESMAN' AND DEPTNO = (SELECT DEPTNO
											    FROM DEPT
													  WHERE DNAME = 'SALES') ;

SELECT ENAME , SAL, JOB , HIREDATE 
FROM EMP
WHERE HIREDATE < (SELECT HIREDATE
							FROM EMP
								   WHERE ENAME = 'KING')
													 AND DEPTNO = (SELECT DEPTNO
																			FROM DEPT
																				   WHERE DNAME = 'OPERATIONS'); 

SELECT *
FROM EMP
WHERE DEPTNO IN (SELECT DEPTNO
						 FROM DEPT
								WHERE DNAME LIKE '%S');
                                
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO
						  FROM EMP
								WHERE ENAME LIKE '%A%' ) ;                               

SELECT DNAME ,LOC 
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
						FROM EMP
							WHERE SAL = '800');
                            
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO
						  FROM EMP
							  	WHERE COMM IS NOT NULL );                            


SELECT LOC
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO 
						FROM EMP
							  WHERE COMM IS NOT NULL AND DEPTNO = '40');
                                                      
USE SCOTT ;                        
SELECT *
FROM DEPT;  



                          