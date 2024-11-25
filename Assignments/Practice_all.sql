
-- to alter the data 
use Scott;
alter table stud
add sclass varchar(20) unique;

alter table stud
drop column sclass;