/*select count(CustomerID) , country from customers 
group by Country;*/


select count(o.OrderID) "Number Of Order", o.shipperID, s.ShipperName from orders as o 
inner join shippers as s 
on s.ShipperID = o.ShipperID
 group by o.ShipperID, s.ShipperName;