/*select suppliername 
from suppliers
where exists (select productname from products where products.supplierID = suppliers.supplierID and price<20)*/


select suppliername 
from suppliers
where exists (select productname from products where products.supplierID = suppliers.supplierID and price = 22);