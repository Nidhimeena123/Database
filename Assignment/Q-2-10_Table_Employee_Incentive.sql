create database Company1;
use Company1;

create table Employee1(
Employee_id int primary key,
First_name varchar(20),
Last_name varchar(20),
Salary int,
Joining_date varchar(20),
Department varchar(20)
);

alter table Employee1
modify Joining_date varchar(50);

insert into Employee1 values
(2,"michael","clarke",800000,"01-JAN-13 12.00.00 AM","Insurance"),
(3,"roy","thomas",700000,"01-FEB-13 12.00.00 AM","Banking"),
(4,"tom","jose",600000,"01-FEB-13 12.00.00 AM","Insurance"),
(5,"jerry","pinto",650000,"01-FEB-13 12.00.00 AM","Banking"),
(6,"philip","mathew",750000,"01-JAN-13 12.00.00 AM","Services"),
(7,"testname1","123",650000,"01-JAN-13 12.00.00 AM","Services"),
(8,"testname2","lname%",600000,"01-JAN-13 12.00.00 AM","Insurance");

select * from Employee1;

create table Incentive(
Employee_ref_id int,
Incentive_date varchar(15),
Incentive_amount int
-- foreign key Incentive(Employee_ref_id) references Employee1(Employee_id)
);


insert into Incentive values
(1,"01-FEB-13",5000),
(2,"01-FEB-13",3000),
(3,"01-FEB-13",4000),
(1,"01-JAN-13",4500),
(2,"01-JAN-13",3500);

select * from Incentive;
drop table Incentive;

-- -----Getting firstname from employee table using tom name 
select first_name from Employee1
where First_name = "tom";

-- ----Getting firstname,joiningdate and salary from employee table 
select  First_name,Joining_date,Salary from Employee1;

-- ----Getting employee details from employee table using order by firstname
select * from Employee1  
order by First_name ;
-- in Ascending 
select * from Employee1  
order by First_name asc;
-- in descending 
select * from Employee1  
order by First_name desc;

-- Get employee details from employee table whose first name contains 'J'
select * from Employee1
where first_name like "%j%";

-- Get department wise maximum salary from employee table order by 
select * from Employee1
order by salary desc;
-- in ascending
select * from Employee1
order by salary asc;

-- select first_name, incentive amount from employee and incentive table who have incentive more than 3000
select First_name,Incentive_amount from Employee1,Incentive
where Incentive_amount>3000;
 
 -- ----Create after trigger on Employee table which insert records in viewtable
 -- Assuming viewtable exists, if not, create it
CREATE TABLE IF NOT EXISTS viewtable (
    id INT PRIMARY KEY,
    employee_name VARCHAR(255),
    salary DECIMAL(10, 2)
    -- Add other columns as needed
);

-- Create the trigger
CREATE TRIGGER after_employee_insert
AFTER INSERT
ON Employee1
FOR EACH ROW
    -- Insert the new record into the viewtable
    INSERT INTO viewtable (id, employee_name, salary)
    VALUES (NEW.employee_id, NEW.employee_name, NEW.salary);
    -- Add other columns as needed





