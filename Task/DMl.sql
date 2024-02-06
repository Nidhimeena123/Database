create database company;
use company;
create table employee(
id int primary key,
name varchar(20),
salary int
);

insert into employee(id,name,salary)value(1,'nidhi',5000);

select * from employee;



update employee 
set name = "rachna"
where id=1;

insert into employee(id,name,salary)value(2,'nidhi',6000);

delete from employee
where id=2;
