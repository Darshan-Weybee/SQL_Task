/*select count(customerID) , country from customers
group by Country
having count(customerID) > 5
order by count(customerID) desc;*/

/*select e.firstname, e.lastname, count(o.orderID) from orders o
inner join employees e
on e.EmployeeID = o.EmployeeID
group by e.FirstName, e.LastName
having count(o.OrderID)>10;*/

select e.firstname, e.lastname, count(o.orderID) from orders o
inner join employees e
on e.EmployeeID = o.EmployeeID
where e.LastName IN ('Davolio', 'Fuller')	
group by e.FirstName, e.LastName
having count(o.OrderID)>25;
