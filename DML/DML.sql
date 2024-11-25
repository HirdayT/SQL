Use scott;
desc Stud;
INSERT INTO STUD VALUES('HIRDAY','101','12','99','FRENCH','12');
INSERT INTO STUD VALUES('Tiwari','102','12','19','CHI','29');
INSERT INTO STUD VALUES('THEKUA','103','12','39','FRENCH','32');

SELECT *
FROM STUD;


INSERT INTO STUD VALUES('&SNAME','&SID','&CLASS','&AGE','&SUBJECT','&SIZE');


-- EXIT;
SELECT *FROM STUD;



--  14/11/24

USE SCOTT;
UPDATE STUD 
SET SNAME = 'HIRDAY',STUDENTID = 240
WHERE STUDENTID=101;


DELETE 
FROM STUD
WHERE SNAME = 'THEKUA';

-- ==========IF HR LOCKED==========
-- connect
-- username- system
-- password- tiger
-- alter user hr account unlock
-- alter user hr identified by tiger 
-- connect user hr 
-- tiger 

-- show user;
-- connect
-- username - hr
-- password - hr
-- Show user;
-- select *
-- from emp;


-- select *
-- from scott.emp;


-- connnect
-- username-Scott
-- password - Tiger

-- showuser- 'Scott' 
-- select *from emp
-- GRANT select 
-- ON emp
-- to hr;



-- connect 
-- usernmae- hr
-- paswrd - tiger
-- SHOW USER - HR
-- SELECT * 
-- FROM SCOTT.emp;



-- revoke select
-- on emp
-- from hr;




