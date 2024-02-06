-- joins used to display data from two or more table
create table student1(
id int primary key,
name varchar (50)

);
insert into student1 values
(1,"xyz"),
(2,"abc"),
(4,"pqr");

create table result1(
r_id int,
total int,
pr int
);
drop table result1;
insert into result1 values
(1,500,70),
(2,600,90),
(5,400,60);
-- joins 
-- inner join
select s.id,s.name,r.pr from student1 as s inner join result1 as r on s.id=r.r_id;
-- left join
select s.id,s.name,r.pr from student1 as s left join result1 as r on s.id=r.r_id;
-- right join 
select s.id,s.name,r.pr from student1 as s right join result1 as r on s.id=r.r_id;
-- full join
select s.id,s.name,r.pr from student1 as s left join result1 as r on s.id=r.r_id
UNION
select s.id,s.name,r.pr from student1 as s right join result1 as r on s.id=r.r_id;
