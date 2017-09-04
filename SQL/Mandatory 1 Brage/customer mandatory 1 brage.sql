
drop database database1;
Create database database1;
use database1; 

create table customer (
	customer_ID int(10) not null,
    customer_fname varchar(28),
    customer_lname varchar(28),
    customer_adress varchar(50),
    customer_phone int(8),
    customer_email varchar(50),
    constraint customer_pk primary key (customer_ID)
    );
    
    insert into customer(customer_ID, customer_fname, customer_lname, customer_adress, customer_phone, customer_email)
    values(1234567890, 'Harald', 'Hansen', 'Førstegate 5', 12345678, 'harald_hansen@hans.com'),
    (1234567891, 'Hans', 'Haraldsen', 'Førstegate 2', 12345679, 'hans_haraldsen@hans.com'),
    (1234567892,'Kåre', 'Hansen', 'Førstegate 3', 12345670, 'kare_hansen@hans.com'),
    (1234567893, 'Syden', 'Spania', 'Førstegate 6', 12345671, 'syden_spania@hans.com');
    
    
    
   
    
    delete from customer
    where customer_id = 1234567891;
    
     select customer_email,  customer_fname, customer_lname from customer;
     
   select * from customer where customer_fname like ('syd%');
   

   
  select * from customer;
   

   
   


    