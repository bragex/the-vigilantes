/* Several helpful queries */
Select * from orderLine;
drop database database1;
drop table orderLine;

/* Creates a table to join orders and products */
create database if not exists database1;
use database1;

create table if not exists orderline (
	order_id int(5) not null,
    prod_id varchar(10) not null,
    ol_quantity int(10),
    foreign key (order_id) references orders(order_id),
    foreign key (prod_id) references product(prod_id),
    constraint orderLine_pks primary key (order_id,prod_id)
);

/* Adds products into orders */
insert into orderLine (order_id,prod_id,ol_quantity)
	values (100,'FR01',1),(100,'FR02',1),(100,'FR03',1),
    (101,'DVD01',1),(101,'DVD02',1),(101,'TV01',1),
    (102,'DVD01',1),(102,'PCS01',1),(103,'TV02',1),
    (104,'TV02',1),(104,'PCS02',1),(105,'PCS01',2);
