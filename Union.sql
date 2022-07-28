/*select count(*) from 
(SELECT City FROM customers
UNION
SELECT City FROM Suppliers) s;*/

/*select city from customers
union
select city from suppliers;*/

select city from customers
union all
select city from suppliers;