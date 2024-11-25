USE SCOTT;
SELECT *
FROM EMP;

SELECT *
FROM DEPT;

SELECT MIN(SAL)
FROM EMP
WHERE SAL > (SELECT MIN(SAL)
					 FROM EMP);
                     


 /*5th max sal*/
SELECT MAX(SAL)
FROM EMP
WHERE SAL < (SELECT MAX(SAL)
					 FROM EMP
							WHERE SAL < (SELECT MAX(SAL)
												FROM EMP
													  WHERE SAL < (SELECT MAX(SAL) 
																			FROM EMP
                                                                            WHERE SAL< (SELECT MAX(SAL)
																								FROM EMP))));
                                                                                                
SELECT ENAME
FROM EMP
WHERE SAL = (SELECT MAX(SAL)
						FROM EMP
							WHERE SAL < (SELECT MAX(SAL)
													FROM EMP
															WHERE SAL < (SELECT MAX(SAL)
																				FROM EMP)));       
SELECT EMPNO
FROM EMP
WHERE SAL = (SELECT MAX(SAL)
						FROM EMP
                        WHERE SAL < (SELECT MAX(SAL)
												FROM EMP)); 
                        
 -- DEPTNAME FOR 4TH MAX SAL                       
SELECT DNAME
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
						FROM EMP
								WHERE SAL = (SELECT MAX(SAL)
													  FROM EMP
															WHERE SAL< (SELECT MAX(SAL)
																				   FROM EMP
																						WHERE SAL< (SELECT MAX(SAL)
																											FROM EMP
																													WHERE SAL<(SELECT MAX(SAL)
																																		FROM EMP)))));                        
SELECT *
FROM EMP
WHERE HIREDATE = (SELECT MIN(HIREDATE)
							      FROM EMP
								     	WHERE HIREDATE > (SELECT MIN(HIREDATE)
																		FROM EMP));
                                                                        
SELECT ENAME 
FROM EMP
WHERE HIREDATE = (SELECT MAX(HIREDATE)
							FROM EMP
									WHERE HIREDATE < (SELECT MAX(HIREDATE)
																	FROM EMP));
    
    
SELECT LOC
FROM DEPT
WHERE DEPTNO = (SELECT DEPTNO
						FROM EMP
						      WHERE HIREDATE = (SELECT MIN(HIREDATE)
																FROM EMP));    
                        
 SELECT MIN(SAL)
 FROM EMP
WHERE SAL > (SELECT MIN(SAL)
					FROM EMP 
                    WHERE SAL >(SELECT MIN(SAL)
										FROM EMP
												WHERE SAL > (SELECT MIN(SAL)
																		FROM EMP
																				WHERE SAL > (SELECT MIN(SAL)
																									FROM EMP
																											WHERE SAL > (SELECT MIN(SAL)
																																FROM EMP
																																		WHERE SAL > (SELECT MIN(SAL)
	
																																						FROM EMP))))));
                                                                                                                                                        
                                                                                                                                                        

SELECT DNAME
FROM DEPT
WHERE  DEPTNO IN (SELECT DEPTNO
							FROM EMP
									WHERE SAL  = (SELECT MAX(SAL)
															FROM EMP
																WHERE SAL < (SELECT MAX(SAL)
																						FROM EMP)));                                                                                                                                                     