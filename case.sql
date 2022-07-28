/*select Quantity, orderID,
case
	when quantity>30 then 'quantity is greater than 30'
	when quantity<30 then 'quantity is less than 30'
	else 'quantity is equal to 30'
end
from order_details*/

/*select customerName, city, country from customers
order by (
case
	when City is not null then City
	else Country
end);*/

