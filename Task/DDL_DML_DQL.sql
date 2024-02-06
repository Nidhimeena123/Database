create database employee_data;
drop database employee_data;

show databases;
create database finance;
use finance;
create table employee(
id int primary key,
name text not null,
address varchar(25),
phone_no varchar(10) unique
);

create database finance1;
use finance1;
create table employee1(
id int primary key,
name text not null,
address varchar(25)
);

insert into employee values
(10,"xyz","nikol","6353572712");

insert into employee values
(20,"abc","ctm","9981246558",200000),
(30,"pqr","maninagar","9998748999",400000);

insert into employee1 values
(100,"nidhi","pnt");

select * from employee;

select * from employee1;

update employee
set name = "nys"
where id = 101; 

alter table employee1
drop phone_no;
 
 delete from employee 
 where id = 101;
 
 delete from employee1
 where id = 30;
 
 
 -- ------------------------------------- alter commands ------------- --  
 alter table employee
 add salary int default 0;
 
 alter table employee
 add city varchar(12);
 
 alter table employee 
 drop city;
 
 alter table employee
 modify salary int;
 
 -- ---------------------------------drop and truncate------------------ --  
 drop table employee1;
 truncate table employee;
 describe employee;
 
 -- ---------------------to select particular column from the table 
 select id,name from employee;
 
 -- -------------------------for soritng of the table
 select * from employee
 order by salary desc;
 
 
 -- --------------------------to give temporaray name to the columns
 select id as employee_id, name as employee_name
 from employee;
 
 select * from employee
 where salary>300000;
 
 select * from employee where salary is  not null;
 
 alter table employee
 add department varchar(10);
 
 select * from employee;
 
 select * from employee
 where name = "abc" And
 salary>100000;
 
 insert into employee values
 (40,"rst","ramol",8145623006,100000,"CE");
 
select * from employee
where address in("ramol");

select * from employee 
where name like "a%";

 
 
 
 
 
