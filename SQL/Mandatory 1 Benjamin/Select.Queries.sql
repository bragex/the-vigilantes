/* 3.4 Several select queries */

/* a) Product details ordered August 2015 and
   only 10 first characters in product name. */



/* b) Modify previous query to only include products
   containing "star" in the name. */



/* c) Customer name, quantity ordered, and product name*/
select cus_lname,ol_quantity,prod_name
	from orders,orderline,customer,product
    where orders.order_id = orderline.order_id and product.prod_id = orderline.prod_id
    and customer.cus_id = orders.cus_id;
    
/* d) Modify previous query to sort results by 
   customer name and product name*/



/*  e) New attribute to product: reorder level */



