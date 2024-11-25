SELECT ENAME
FROM EMP
WHERE SAL = (SELECT MIN(SAL)
				      FROM EMP);
							
 SELECT ENAME ,HIREDATE
 FROM EMP
 WHERE HIREDATE = (SELECT MAX(HIREDATE)
							FROM EMP );
						
                        
SELECT ENAME ,SAL,COMM
FROM EMP
WHERE COMM = (SELECT MAX(COMM)
						FROM EMP) ;                      
                        
                        
SELECT *
FROM EMP
WHERE HIREDATE =  (SELECT MIN(HIREDATE)
								FROM EMP);
                                
  SELECT ENAME, SAL*12
  FROM EMP
  WHERE SAL*12 >ALL (SELECT SAL*12
							FROM EMP
								WHERE JOB = 'SALESMAN'); 
                                
                                
-- Assignment Q -51

SELECT ENAME 
FROM EMP
WHERE SAL >ALL (SELECT SAL 
					FROM EMP 
						 WHERE JOB = 'SALESMAN');
                         
 SELECT *
 FROM EMP
 WHERE HIREDATE >ALL (SELECT HIREDATE
					       FROM EMP
								 WHERE JOB = 'CLERKS');
                                 
SELECT ENAME ,SAL 
FROM EMP
WHERE SAL <ANY (SELECT SAL
				        FROM EMP
							WHERE JOB = 'MANAGER'); 
                            
SELECT ENAME ,HIREDATE
FROM EMP
WHERE HIREDATE <ALL (SELECT HIREDATE
								FROM EMP
									WHERE JOB = 'MANAGER');
                                    
SELECT ENAME 
FROM EMP
WHERE HIREDATE  <ALL (SELECT HIREDATE
								FROM EMP
									WHERE JOB = 'MANAGER') 
														AND SAL <ALL (SELECT SAL
																					FROM EMP
																							WHERE JOB = 'CLERKS');

SELECT *
FROM EMP
WHERE JOB = 'CLERKS' AND HIREDATE <ANY  (SELECT HIREDATE
													FROM EMP
														  WHERE JOB = 'SALESMAN'); 												

SELECT *
FROM EMP
WHERE DEPTNO =ANY (SELECT DEPTNO
						FROM DEPT
								WHERE DNAME IN ('ACCOUNTING' OR 'SALES' ));
                                
                                
SELECT DNAME
FROM DEPT
WHERE DEPTNO IN (SELECT DEPTNO 
						 FROM EMP
								WHERE ENAME IN ('SMITH','KING','MILLER')); 
                                
SELECT *
FROM EMP
WHERE DEPTNO = ANY (SELECT DEPTNO 
							FROM DEPT
									WHERE LOC IN ('NEW YORK', 'CHICAGO' )) ;   
                                    
                                    
                                    
SELECT ENAME 
FROM EMP
WHERE DEPTNO =ALL (SELECT DEPTNO
						FROM DEPT 
								WHERE HIREDATE >ALL (SELECT HIREDATE
															FROM EMP
																WHERE DEPTNO = '10'));                                    
                                
                                
                                    
                                    
 
 
  
SELECT *
FROM DEPT;                       


                                
                                