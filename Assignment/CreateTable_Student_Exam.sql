create database school;
use school;

create table student(
Rollno int primary key,
Name varchar(20),
Branch varchar(10)
);

insert into student values
(1,"Jay","CE"),
(2,"Suhani","EC"),
(3,"Kriti","EC");

select * from student;

create table exam(
Rollno int,
S_code varchar(10),
Marks int,
P_code varchar(10),
foreign key exam(Rollno) references student(Rollno)
);

insert into exam values
(1,"CE11",50,"CE"),
(1,"CE12",60,"CE"),
(2,"EC101",66,"EC"),
(2,"EC102",70,"EC"),
(3,"EC101",45,"EC"),
(3,"EC102",50,"EC");

select * from student;
select * from exam;

