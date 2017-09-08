use mandatory1;

drop table order_data;
create table order_data(
	Ord_id int(4) not null,
    cus_id int(4) default null,
    Delivery_date date,
    Ord_status boolean,
    Primary key (Ord_id), 
    Foreign key (cus_id) references customer(cus_id)
    );
    
use mandatory1;
insert into order_data(Ord_id, Delivery_date, Ord_status)
values(1, '2000-01-01', true);

select * from order_data;