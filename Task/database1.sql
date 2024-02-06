create database school_1;
use school_1;
create table student(
id int primary key,
name text not null,
address varchar(50),
phone_no varchar(10),
pr int check(pr>0)
);

insert into student(id,name,address,phone_no,pr) values(101,"xyz","96-nikol","9864523910",56);

select * from student;



