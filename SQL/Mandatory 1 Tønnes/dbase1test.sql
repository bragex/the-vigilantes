drop database database1;
create database database1;
use database1;
create table customer (
	customer_id int(10) not null,
    customer_firstname varchar(28) not null,
    customer_lastname varchar(28) not null,
    customer_address varchar(30),
    customer_phonen int(12),
    constraint customer_pk primary key (customer_id)
);

use database1;
truncate table customer;
insert into customer (customer_id,customer_firstname,customer_lastname,customer_address,customer_phonen)
	values (1,'Raman','Delhi','Gate1',97889988),(2,'Bob','Larsen','Gate2',98776655),(3,'Lars','Andersen','Gate3',96665544);

select * from customer; 