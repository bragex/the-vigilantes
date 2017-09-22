/* Several helpful queries */
drop table customer;
drop table orders;
drop table product;
drop table orderline;
drop database database1;

select * from customer;
Select * from orders;
Select * from product;
Select * from orderLine;

/*1.3 Creates a database and a customer table. */
create database if not exists database1;
use database1;

create table if not exists customer (
	cus_id int(5) not null auto_increment,
	cus_lname varchar(30) not null,
	cus_fname varchar(30) not null,
	cus_pnumber int(12),
	cus_address varchar(50) not null,
	cus_email varchar(50),
	constraint customer_pk primary key (cus_id)
);

/*1.4 Adds three people to the customer table. */
/*Mandatory 2: updatet with five more customers*/
insert into customer (cus_lname, cus_fname, cus_pnumber, cus_address, cus_email)
	values ('Hansen', 'Jens', 37012345, '4823 Nedenes, Granittveien 6', 'HanJ@gmail.com'),
	('Holm', 'Sanne', 37067890, '4823 Nedenes, Juvelveien 19', 'HolS@gmail.com'),
	('Roscher', 'Trude', 37043434, '4823 Nedenes, Kvartsveien 21', 'RosT@gmail.com'),
    ('Amundsen', 'Bengt', 99774466, '4558 Songdalen, Storgata 29', 'bengt@amundsen.no'),
    ('Jenssen', 'Heidi', 44556965, '7700 Trondheim, Nardoveien 77', 'heidi@trondheim.no'),
    ('Nielsen', 'Egil', 77889966, '5020 Bergen, Sotraveien 92', 'egil@online.no'),
    ('Knudsen', 'Petter', 54453314, '5493 Askøy, Herdlaveien 89', 'petter@knudsen.no'),
    ('Helgesen', 'Nils Raymond', 98556132, '4899 Stavanger, Egenesveien 102', 'nray@gmail.com');

/*1.4 Adds two group members to the customer table. */
insert into customer (cus_lname, cus_fname, cus_pnumber, cus_address, cus_email)
	values ('Sandøy', 'Benjamin', 87654321, 'Ganktown, 1337 Blazeit 420', 'bramail@gmail.com'),
	('Moe', 'Kim', 34566782, 'Hjemm, 3715 Bestegata 7', 'kimsin@mitt.no');

/*1.4 Changes the address of a customer instance. */
update customer
	set cus_address = 'Nedenes, 4823 Nellikveien 5'
	where cus_id = 1;

/*1.4 Deletes a customer instance from the table. */
delete from customer where cus_id = 1;

/*1.5 Finds specific columns from the customer table. */
select cus_lname, cus_email from customer;

/*1.6 Finds customers who have "San" as the first three letters in their first- or last name. */
select * from customer
where cus_lname like 'San%' or cus_fname like 'San%';

/*2.4 Creates the table "orders". */
create table if not exists orders (
	order_id int(5) not null auto_increment,
    order_date date,
    order_status boolean default false,
    cus_id int(4) not null,
    foreign key (cus_id) references customer(cus_id),
    constraint order_pk primary key (order_id)
);

/* Creates the start of the increment for order_id at 100 */
/* !!The increment must be set for the rest of the code to work properly!! */
alter table orders auto_increment = 100;

/*2.5 Adds some order instances. */
insert into orders (order_date, order_status, cus_id)
	values ('2015.09.08',true,2),('2015.08.08',true,2),
	('2016.05.08',false,3),('2016.08.08',true,4),
	('2015.08.08',false,4),('2017.03.08',false,5);
    
/*2.5 Tries to delete a customer with an order tied to it. Fails if an order has been added to a customer. */
delete from customer where cus_id = 4;

/*2.6  The query lists the last name of a customer, order date and the status of the order. */
Select customer.cus_lname, order_date, order_status 
	from customer, orders
    where customer.cus_id = orders.cus_id; 

/*2.7 This query creates a lot of duplicates. */
Select cus_lname, order_date, order_status 
	from customer, orders; 
    
/*3.3 Creates two tables and inserts values. */
create table if not exists product (
	prod_id varchar(10) not null,
    prod_name varchar(20),
    prod_price int(10),
    constraint product_pk primary key (prod_id)
);

/* Adds products into the product table. */
/* Mandatory 2, updatet with five products */
insert into product (prod_id, prod_name, prod_price)
	values ('FR01','Banan',10),('FR02','Eple',10),('FR03','Pære',10),
    ('TV01','SuperduperTV',10999),('DVD01','Pitch Black',140),('DVD02','Dunkirk',300),
    ('PCS01','Nidhogg 2',200),('PCS02','Warhammer 2',10),('TV02','DecentTV',3999),
    ('FI01','Starfish',100),('KR01','Star Anise',50), ('DVD03', 'The Mummy', 299), 
    ('DVD04', 'The Sixth Sense', 299), ('BG01', 'Axis and Allies', 999), ('BG02', 'Colt Express', 699), 
    ('BG03', 'Istanbul', 449);

/* Table to assist in attatching orders and products. */
create table if not exists orderline (
	order_id int(5) not null,
    prod_id varchar(10) not null,
    ol_quantity int(10),
    foreign key (order_id) references orders(order_id),
    foreign key (prod_id) references product(prod_id),
    constraint orderLine_pks primary key (order_id,prod_id)
);

insert into orderLine (order_id,prod_id,ol_quantity)
	values (100,'FR01',1),(100,'FR02',1),(100,'FR03',1),
    (101,'DVD01',1),(101,'DVD02',1),(101,'TV01',1),
    (102,'DVD01',1),(102,'PCS01',1),(103,'TV02',1),
    (104,'TV02',1),(104,'PCS02',1),(105,'PCS01',2),
    (102,'FI01',2),(103,'KR01',2),(104,'KR01',2);

/*3.4 Several select queries */
/*a) Product details ordered August 2015 and only 10 first characters in product name. */
select order_date, left (prod_name,10)
	from orders,orderline,customer,product
    where orders.order_id = orderline.order_id and product.prod_id = orderline.prod_id
    and customer.cus_id = orders.cus_id and order_date like '2015-08%';

/*b) Modify previous query to only include products containing "star" in the name. */
select order_date, left (prod_name,10)
	from orders,orderline,customer,product
    where orders.order_id = orderline.order_id and product.prod_id = orderline.prod_id
    and customer.cus_id = orders.cus_id and order_date like '2015-08%'
    and prod_name like '%star%';

/*c) Customer name, quantity ordered, and product name*/
select cus_lname,ol_quantity,prod_name
	from orders,orderline,customer,product
    where orders.order_id = orderline.order_id and product.prod_id = orderline.prod_id
    and customer.cus_id = orders.cus_id;
    
/*d) Modify previous query to sort results by customer name and product name*/
select cus_lname,ol_quantity,prod_name
	from orders,orderline,customer,product
    where orders.order_id = orderline.order_id and product.prod_id = orderline.prod_id
    and customer.cus_id = orders.cus_id
    order by cus_lname,prod_name;
    
/*e) New attribute to product: reorder level */
alter table product
	add reorder_lvl varchar(20) default 'Hello world!';

select * from product;
