use database1;

create table if not exists orders (
	order_id int(10) not null auto_increment,
    order_type varchar(10),
    order_date date,
    order_status boolean default false,
    customer_id int(10) default null,
    foreign key (customer_id) references customer(customer_id),
    constraint order_pk primary key (order_id)
);

alter table orders auto_increment=100;

use database1;
insert into orders (order_type,order_date,order_status,customer_id)
	values ('Banan','2017.09.08',true,1),('Kake','2017.09.08',true,1),
		   ('Shampoo','2017.09.08',false,2),('Balsam','2017.09.08',true,2),
           ('Potet','2017.09.08',false,3),('Biff','2017.09.08',false,3);

Select customer_id,order_date,order_status from /*customer,*/orders; 

Select * from orders;

drop table orders;

delete from orders
	where order_id = 100;

