-- foreign key used to link two or more tables
create table student101(
id int primary key,
name varchar(50)
);
create table result(
id int,
total int,
status varchar(6),
foreign key result(id) references student101(id)

);