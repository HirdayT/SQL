USE SCOTT;
create table customer(
CID INT(3) PRIMARY KEY,
CNAME VARCHAR(20) NOT NULL,
CDEPT INT(1) NOT NULL,
CMGR INT(4) NOT NULL,
SAMOUNT INT(10));

DESC CUSTOMER; 



ALTER TABLE CUSTOMER 
RENAME COLUMN CNAME TO NAME;

ALTER TABLE CUSTOMER
ADD COLUMN PINCODE INT(6);


ALTER TABLE CUSTOMER
MODIFY SAMOUNT VARCHAR(20);


ALTER TABLE CUSTOMER
MODIFY SAMOUNT VARCHAR(20) NOT NULL;

ALTER TABLE CUSTOMER
MODIFY NAME VARCHAR(20) NOT NULL UNIQUE;

SELECT *
FROM TAB;
DROP TABLE CUSTOMER;


-- Flashabck doesnot work in my sql
-- FLASHBACK TABLE CUSTOMER 
-- TO BEFORE DROP;




Create table bhaak(
bid varchar(50) not null,
bname int(20) null);

rename table bhaak to bhichu;


alter table bhichu
add column haubilau varchar(20) not null;
desc bhichu;


alter table bhichu
drop column bid ;


alter table bhichu
rename column haubilau to bhagyawaan;



alter table bhichu
modify bhagyawaan  char(20);


alter table bhichu
modify bhagyawaan char(20) not null;



truncate table bhichu;



drop table bhichu;
-- flashback table bhichu
-- to before drop;


-- purge table bhichu; 