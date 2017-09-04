create database mandatory1;

use mandatory1;

create table customer (
cus_id int(4) not null,
cus_lname varchar(30) not null,
cus_fname varchar(30),
cus_pnumber int(8),
cus_address varchar(50),
cus_email varchar(50),
constraint customer_pk primary key (cus_id)
);