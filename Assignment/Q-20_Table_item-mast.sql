create database item;
use item;
create table item_mast(
PRO_ID int,
PRO_NAME varchar(20),
PRO_PRICE float,
PRO_COM int
);

insert into item_mast values
(101,"Mother Board",3200.00,15),
(102,"Key Board",450.00,16),
(103,"Zip Drive",250.00,14),
(104,"Speaker",550.00,16),
(105,"Monitor",5000.00,11),
(106,"DVD drive ",900.00,12),
(107,"CD drive",800.00,12),
(108,"Printer",2600.00,13),
(109,"Refill cartridge ",350.00,13),
(110,"Mouse",250.00,12);

select * from item_mast;

select PRO_id,PRO_NAME,PRO_COM,PRO_PRICE from item_mast 
where PRO_PRICE between 200 and 600;

