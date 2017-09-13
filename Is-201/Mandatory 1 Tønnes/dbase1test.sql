create database if not exists database1;
use database1;
create table if not exists customer (
	customer_id int(10) not null auto_increment,
    customer_firstname varchar(28) not null,
    customer_lastname varchar(28) not null,
    customer_address varchar(30),
    customer_phonen int(12),
    customer_email varchar(38),
    constraint customer_pk primary key (customer_id)
);

use database1;
insert into customer (customer_firstname,customer_lastname,customer_address,customer_phonen,customer_email)
	values ('Raman','Delhi','Gate1',97889988,'Raman.Delhi@mail.com'),('Bob','Larsen','Gate2',98776655,'bob.larsen@hotmail.com'),('Lars','Andersen','Gate3',96665544,'lars.andersen@gmail.com');

select * from customer; 

drop database database1;

/*delete from customer
	where customer_id = 1;
*/
