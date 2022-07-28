create view report1 as
select c.Customer_ID, c.Customer_Name, o.Date_of_purchase, s.Shopping_cart_ID, s.Book_ID
from (Customer c
inner join Order_and_details o
on c.Customer_ID = o.Customer_ID)
inner join Shopping_cart s
on s.Shopping_cart_ID = o.Shopping_cart_ID;

select * from report1;