/*SELECT Orders.OrderID, Customers.CustomerName
FROM Orders
INNER JOIN Customers ON Orders.CustomerID = Customers.CustomerID;*/

/*SELECT O.OrderID, C.CustomerName, S.ShipperName
FROM ((Orders AS O
INNER JOIN Customers AS C ON O.CustomerID = C.CustomerID)
INNER JOIN Shippers AS S ON O.ShipperID = S.ShipperID);*/

/*SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;*/

/*SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;*/

/*SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID=Orders.CustomerID
ORDER BY Customers.CustomerName;

SELECT * FROM Orders FULL OUTER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID;*/

/*select * from customers, orders;*/
select A.CustomerName, B.CustomerName, A.City from customers A, customers B where A.CustomerID != B.CustomerID and A.City = B.City order by A.City;
