-- procedure is used to make user defined function
delimiter &&
create procedure display_data()
begin
select * from  employee;
end &&

call display_data;