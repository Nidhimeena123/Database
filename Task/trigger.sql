use school;
create table result1(
id int primary key,
mark1 int not null,
mark2 int not null,
total int
);
create trigger set_total
before insert on result1
for each row
set new.total=new.mark1+new.mark2;

insert into result1(id,mark1,mark2)values
(1,60,30);

select * from result1;