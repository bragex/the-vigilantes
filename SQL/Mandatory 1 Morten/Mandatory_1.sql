drop database mandatory1;

create database mandatory1;

use mandatory1;

create table customer (
cus_id int(4) not null,
cus_lname varchar(30) not null,
cus_fname varchar(30),
cus_pnumber int(8),
cus_address varchar(50),
cus_email varchar(50),
constraint customer_pk primary key (cus_id)
);

use mandatory1;
-- Sletter alle data og lager nytt. 
truncate table customer; 

insert into customer 
(cus_id, cus_lname, cus_fname, cus_pnumber, cus_address,
cus_email)
values 
(4242, 'Hansen', 'Jens', 37012345, 'Arendal', 'HanJ@gmail.com'),
(1234, 'Holm', 'Sturla', 37067890, 'Arendal', 'HolS@gmail.com'),
(5736, 'Roscher', 'Trude', 37043434, 'Arendal', 'RosT@gmail.com'),
(24, 'Sandøy', 'Benjamin', 95449044, 'Arendal', 'benjas@uia.no'),
(244, 'Hansen', 'Sanne', 37043777, 'Arendal', 'dårligmail@hotmail.com');


use mandatory1;

update customer
set cus_id = 1
where cus_id = 1234;


use mandatory1;

delete from customer
where cus_id = 4242;

use mandatory1;

select cus_lname, cus_email
from customer;

use mandatory1;

select cus_id, cus_lname, cus_fname, cus_pnumber, cus_address, cus_email from customer

where cus_lname like 'San%' or cus_fname like 'San%'