create table SALESPERSON(
SNO int primary key,
SNAME varchar(10),
CITY varchar(20),
COMM float
);

insert into SALESPERSON values
(1001,"peel","london",0.12),
(1002,"serres","san jose",0.13),
(1004,"motika","london",0.11),
(1007,"rafkin","barcelona",0.15),
(1003,"axelrod","new york",0.1);

create table CUSTOMER(
CNM int primary key,
CNAME varchar(10),
CITY varchar(20),
RATTING int,
SNO int,
foreign key CUSTOMER(SNO) references SALESPERSON(SNO)
);

insert into CUSTOMER values
(201,"hoffman","london",100,1001),
(202,"giovanne","rome",200,1003),
(203,"liu","san jose",300,1002),
(204,"grass","barcelona",100,1002),
(206,"clemens","london",300,1007),
(207,"pereira","rome",100,1004);

select * from  SALESPERSON;
select * from  CUSTOMER;

-- -------NAME and CITY from SALESPERSON where commission is above 0.12
select SNAME,CITY from SALESPERSON 
where COMM > 0.12;

-- -----All SALESPERSON either in Barcelona or in London
select * from SALESPERSON 
where CITY in ("barcelona","london");

-- -----All SALESPERSON with commission between 0.10 and 0.12
select * from SALESPERSON 
where COMM between 0.10 and 0.12;

-- ----All CUSTOMER excluding those with rating <= 100 unless they are located in rome
select * from CUSTOMER 
where RATTING > 100 or CITY = "rome";


