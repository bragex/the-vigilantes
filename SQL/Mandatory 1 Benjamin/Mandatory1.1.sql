/* Several helpful queries */
select * from customer;
drop database database1;
drop table customer;

/*1.3 Creates a database and a customer table */
create database if not exists database1;
use database1;

create table if not exists customer (
	cus_id int(5) not null auto_increment,
	cus_lname varchar(30) not null,
	cus_fname varchar(30) not null,
	cus_pnumber int(12),
	cus_address varchar(50) not null, /*Make own columns for city, street and postal code?*/
	cus_email varchar(50),
	constraint customer_pk primary key (cus_id)
);

/*1.4 Adds three people to the customer table */
insert into customer (cus_lname, cus_fname, cus_pnumber, cus_address, cus_email)
	values ('Hansen', 'Jens', 37012345, 'Nedenes, 4823 Granittveien 6', 'HanJ@gmail.com'),
	('Holm', 'Sanne', 37067890, 'Nedenes, 4823 Juvelveien 19', 'HolS@gmail.com'),
	('Roscher', 'Trude', 37043434, 'Nedenes, 4823 Kvartsveien 21', 'RosT@gmail.com');

/*1.4 Adds two group members to the customer table */
insert into customer (cus_lname, cus_fname, cus_pnumber, cus_address, cus_email)
	values ('Sandøy', 'Benjamin', 87654321, 'Ganktown, 1337 Blazeit 420', 'bramail@gmail.com'),
	('Moe', 'Kim', 34566782, 'Hjemm, 3715 Bestegata 7', 'kimsin@mitt.no');

/*1.4 Changes the address of a customer instance */
update customer
	set cus_address = 'Nedenes, 4823 Nellikveien 5'
	where cus_id = 1;

/*1.4 Deletes a customer instance from the table */
delete from customer where cus_id = 1;


/*1.5 Finds specific columns from the customer table */
select cus_lname, cus_email from customer;

/*1.6 Finds customers who have "San" as the first three letters in their first- or surname */
select cus_id, cus_lname, cus_fname, cus_pnumber, cus_address, cus_email from customer
where cus_lname like 'San%' or cus_fname like 'San%';

/*2.5 Tries to delete a customer with an order tied to it.
	  Fails if an order has been added to a customer. */
delete from customer where cus_id = 4;
