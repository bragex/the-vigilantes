use database1;

create table if not exists orders (
	order_id int(10) not null auto_increment primary key,
    order_type varchar(10),
    customer_id int(10) default null,
    foreign key (customer_id) references customer(customer_id)
);

insert into orders (order_id,order_type)
	values (10,'Toy');

Select * from orders;


drop table orders;