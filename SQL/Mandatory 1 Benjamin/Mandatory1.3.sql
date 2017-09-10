/* Several helpful queries */
Select * from product;
drop database database1;
drop table product;

/* Creates a table for products */
create database if not exists database1;
use database1;

create table if not exists product (
	prod_id varchar(10),
    prod_name varchar(20),
    prod_price int(10),
    constraint product_pk primary key (prod_id)
);

/* Adds products */
insert into product (prod_id, prod_name, prod_price)
	values ('FR01','Banan',10),('FR02','Eple',10),('FR03','Pære',10),
    ('TV01','SuperduperTV',10999),('DVD01','Pitch Black',140),('DVD02','Dunkirk',300),
    ('PCS01','Nidhogg 2',200),('PCS02','Warhammer 2',10),('TV02','DecentTV',3999);

