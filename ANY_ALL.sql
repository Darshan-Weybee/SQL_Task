/*select productname from products
where ProductID = any(select ProductID from order_details where Quantity = 10)
order by productname;*/

/*select distinct p.productname from products p
inner join order_details o
on p.ProductID = o.ProductID
where o.Quantity = 10
order by p.ProductName;*/

/*select productname from products
where ProductID = all(select productID from order_details where Quantity > 100);

select * from order_details where Quantity > 100;*/
select * from products where ProductID = 55;