/* Several helpful queries */
drop table customer;
drop table orders;
drop table product;
drop table orderline;
drop table invoice;
drop database database1;

select * from customer;
select * from orders;
select * from product;
select * from orderline;
select * from invoice;

/*1.3 Creates a database, uses it, and creates a customer table. */
create database if not exists database1;
use database1;

create table if not exists customer (
	cus_id int(5) auto_increment primary key,
	cus_lname varchar(30) not null,
	cus_fname varchar(30),
	cus_pnumber int(12),
	cus_address varchar(50) not null,
	cus_email varchar(50) not null,
    cus_owner int(5),
    foreign key (cus_owner) references customer(cus_id)
);

/*1.4 Adds people to the customer table.
Mandatory 2: updated with five more customers.*/
insert into customer (cus_lname, cus_fname, cus_pnumber, cus_address, cus_email, cus_owner)
	values ('Hansen', 'Jens', 37012345, '4823 Nedenes, Granittveien 6', 'HanJ@gmail.com', null),
	('Holm', 'Sanne', 37067890, '4823 Nedenes, Juvelveien 19', 'HolS@gmail.com', 1),
	('Roscher', 'Trude', 37043434, '4823 Nedenes, Kvartsveien 21', 'RosT@gmail.com', 1),
    ('Amundsen', 'Bengt', 99774466, '4558 Songdalen, Storgata 29', 'bengt@amundsen.no', 1),
    ('Jenssen', 'Heidi', 44556965, '7700 Trondheim, Nardoveien 77', 'heidi@trondheim.no', null),
    ('Nielsen', 'Egil', 77889966, '5020 Bergen, Sotraveien 92', 'egil@online.no', 5),
    ('Knudsen', 'Petter', 54453314, '5493 Askøy, Herdlaveien 89', 'petter@knudsen.no', 5),
    ('Helgesen', 'Nils Raymond', 98556132, '4899 Stavanger, Egenesveien 102', 'nray@gmail.com', 5),
    ('Kristost', 'Jesost', 98253132, '0101 Ostebyen, Osteveien 057', 'ost@gmail.com', 5);

/*1.4 Adds two group members to the customer table. */
insert into customer (cus_lname, cus_fname, cus_pnumber, cus_address, cus_email, cus_owner)
	values ('Sandøy', 'Benjamin', 87654321, '1337 Ganktown, Blazeit 420', 'bramail@gmail.com', null),
	('Moe', 'Kim', 34566782, '3715 Hjem, Bestegata 7', 'kimsin@mitt.no', 10);

/*2.4 Creates the table "orders". */
create table if not exists orders (
	order_id int(5) auto_increment primary key,
    order_date date,
    order_status boolean default false,
    cus_id int(4) not null,
    foreign key (cus_id) references customer(cus_id)
);

/* Sets the start of the increment for order_id at 100 */
/* !!The increment must be set for the rest of the code to work properly!! */
alter table orders auto_increment = 100;

/*2.5 Adds some orders. This is also updated for mandatory 2 */
insert into orders (order_date, order_status, cus_id)
	values ('2015.09.08',true,2),('2015.08.08',true,2),
	('2016.05.08',false,3),('2016.08.08',true,4),
	('2015.08.08',false,4),('2017.03.08',false,5),
    ('2016.09.08',true,5),('2014.08.08',false,6),
	('2016.04.08',true,6),('2016.09.01',true,7),
	('2014.07.04',false,7),('2017.03.08',true,8),
    ('2014.07.04',false,9),('2017.03.08',true,9),
    ('2014.07.04',false,10),('2017.03.08',true,10);

/*3.3 Creates two tables and inserts values. */
create table if not exists product (
	prod_id varchar(10) not null primary key,
    prod_name varchar(20),
    prod_price int(10),
    prod_instock int(10),
    prod_reorderlvl int(10)
);

/* Adds products into the product table. */
/* Mandatory 2, updated with five products */
insert into product (prod_id, prod_name, prod_price,prod_instock,prod_reorderlvl)
	values ('FR01','Banan',10,500,50),('FR02','Eple',10,500,50),('FR03','Pære',10,500,50),
    ('TV01','SuperduperTV',10999,20,4),('DVD01','Pitch Black',140,10,2),('DVD02','Dunkirk',300,50,10),
    ('PCS01','Nidhogg 2',200,50,10),('PCS02','Warhammer 2',10,100,20),('TV02','DecentTV',3999,40,5),
    ('FI01','Starfish',100,20,5),('KR01','Star Anise',50,100,10), ('DVD03', 'The Mummy', 299,10,2), 
    ('DVD04','The Sixth Sense',299,10,2),('BG01','Axis and Allies',999,10,2), 
    ('BG02','Colt Express',699,8,1), ('BG03','Istanbul',449,5,1);

/* Table to assist in attatching orders and products. */
create table if not exists orderline (
	order_id int(5),
    prod_id varchar(10),
    ol_quantity int(10),
    foreign key (order_id) references orders(order_id),
    foreign key (prod_id) references product(prod_id),
    constraint orderLine_pks primary key (order_id,prod_id)
);

insert into orderline (order_id,prod_id,ol_quantity)
	values (100,'FR01',2),(100,'FR02',3),(100,'FR03',4),
    (101,'DVD01',1),(101,'DVD02',1),(101,'TV01',1),
    (102,'DVD01',1),(102,'PCS01',1),(102,'TV02',1),
    (103,'TV02',1),(103,'PCS02',1),(104,'PCS01',2),
    (104,'FI01',2),(105,'KR01',2),(106,'DVD01',2),
    (107,'TV01',1),(108,'FR01',5),(109,'PCS02',1),
    (110,'KR01',5),(111,'BG03',2),(112,'FR01',6),
    (113,'DVD04',1),(114,'TV02',1),(115,'PCS02',1);

/*MANDATORY 2*/
create table if not exists invoice(
	in_id int(5) auto_increment primary key,
	in_issuedate date,
	in_paiddate date,
	in_creditcard long,
    in_name varchar(50),
    in_expirydate date,
    order_id int(5) unique,
    foreign key (order_id) references orders(order_id)
);

/* !!The increment must be set for the rest of the code to work properly!! */
alter table invoice auto_increment = 1000;

insert into invoice (in_issuedate, in_paiddate, in_creditcard, in_name, in_expirydate, order_id)
values 	('2017.09.08', '2017.09.18', 1276656899, 'Oioi Herreli', '2017.09.28', 101),
		('2017.09.09', '2017.09.19', 5387661963, 'Å SAVA', '2017.09.28', 102),
		('2017.09.08', '2017.09.18', 7433629926, 'Jaja du', '2017.09.28', 107);

/* QUERIES
4a) List customer name, total quantity ordered and product name, for each customer and each product.
*/
select customer.cus_fname
	 , customer.cus_lname
     , orderline.ol_quantity
     , product.prod_name
	from customer
	join orders on customer.cus_id = orders.cus_id
	join orderline on orders.order_id = orderline.order_id
	join product on orderline.prod_id = product.prod_id;

/* 4b) List product name, quantity ordered and total amount paid for the 3 best-selling products */
select prod_name
	 , sum(ol_quantity) as total_quantity
     , sum(ol_quantity) * prod_price as total_price
	from customer
	join orders on customer.cus_id = orders.cus_id
	join orderline on orders.order_id = orderline.order_id
	join product on orderline.prod_id = product.prod_id
    group by product.prod_id
    order by total_quantity desc
    limit 3;

/* 4c) Define a view that shows customer, order and total amount for each order. */
create view Task_4c as 
	select cus_lname
		 , cus_fname
		 , cus_email
         , orders.order_id
         , order_status
         , sum(ol_quantity * prod_price) as total_price
	from customer
	join orders on customer.cus_id = orders.cus_id
    join orderline on orders.order_id = orderline.order_id
    join product on orderline.prod_id = product.prod_id
    group by order_id;
    
/* 4d) Print the first 10 characters of product name and quantity-before-reorder 
(quantityin-stock – reorder-level) for products with the text “EN” in the first 
10 characters of their product names. */
select left(prod_name,10)
	 , (prod_instock - prod_reorderlvl) as quantity_before_reorder
	from customer,product,orderline,orders
    where orders.order_id = orderline.order_id and product.prod_id = orderline.prod_id
    and customer.cus_id = orders.cus_id and left(prod_name,10) like '%en%'
    group by prod_name;

/* 4e) Print customer name, order number and total sum for each order. */
select cus_lname
	 , cus_fname
     , orders.order_id
     , sum(ol_quantity * prod_price) as total_price
	from customer
	join orders on customer.cus_id = orders.cus_id
	join orderline on orders.order_id = orderline.order_id
	join product on orderline.prod_id = product.prod_id
	group by order_id;
