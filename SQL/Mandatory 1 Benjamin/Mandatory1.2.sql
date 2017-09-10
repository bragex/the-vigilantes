/* Several helpful queries*/
Select * from orders;
drop database database1;
drop table orders;

/*2.4 Creates the table "orders" */
create database if not exists database1;
use database1;

create table if not exists orders (
	order_id int(5) not null auto_increment,
    order_date date,
    order_status boolean default false,
    cus_id int(4) not null,
    foreign key (cus_id) references customer(cus_id),
    constraint order_pks primary key (order_id,cus_id)
);

/* Creates the start of the increment for order_id at 100 
   !!The increment must be set for the rest of the code to work properly!! */
alter table orders auto_increment=100;

/*2.5 Adds some order instances */
insert into orders (order_date,order_status,cus_id)
	values ('2015.09.08',true,4),('2015.08.08',true,4),
	('2016.05.08',false,2),('2016.08.08',true,2),
	('2015.08.08',false,3),('2017.03.08',false,3);

/*2.6 We changed name to id as it was used as the foreign key.
  2.7 Can't complete the query as the cus_id field is ambiguous.
	  We'll need to specify the table for it to complete. */
Select cus_id,order_date,order_status from /*customer,*/orders; 
