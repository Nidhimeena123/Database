use finance;
-- DQL select
-- to display all coloumns
select * from employee;
-- to display specific coloumn
select id,name from employee;
-- where used to display specif record
select * from employee
where id=20;

select * from employee
where salary>15000;

-- operators
-- logical
-- AND
select * from employee
where salary>20000 AND name="abc";
-- OR
select * from employee
where salary>20000 OR name="abc";
-- between
select * from employee
where salary between 100000 and 300000;

-- IN
select * from employee
where address in("ctm","ramol"); 
-- like
select * from employee
where name like'a%';

select * from employee
where name like '%r';

insert into employee (id,name) values
(67,"janvi");

select * from employee
where name like '%v%';
-- alias is used to give temporary name to coloumns
-- length
select id as student_id,name as student_name,length(name) as length_of_name
from employee;
-- lower case
select id,name,lcase(name)
from employee;
-- upper case
select id,name,ucase(name)
from employee;