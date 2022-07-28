create view Customer_Details as
select c.Customer_name, c.Street_address, o.Order_ID, o.Date_of_purchase, o.Shipping_type, o.Shopping_cart_ID
from Customer c
inner join Order_and_details o
on c.Customer_ID = o.Customer_ID;
 
select * from Customer_Details;                                                                                                                         