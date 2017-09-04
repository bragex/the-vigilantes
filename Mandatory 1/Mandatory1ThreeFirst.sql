use mandatory1;

select cus_id, cus_lname, cus_fname, cus_pnumber, cus_address, cus_email from customer

where cus_lname like 'San%' or cus_fname like 'San%'
