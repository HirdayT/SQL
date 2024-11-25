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
                                
                                
                                
                                
1 