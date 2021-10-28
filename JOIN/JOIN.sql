SQL JOIN

-- Exemplos usados do https://www.w3schools.com/sql/sql_join.asp

-- Uma JOIN cláusula é usada para combinar linhas de duas ou mais tabelas, com base em uma coluna relacionada entre elas.
-- A JOIN clause is used to combine rows from two or more tables, based on a related column between them.

-- A INNER JOIN palavra-chave seleciona registros que possuem valores correspondentes em ambas as tabelas.

-- INNER JOIN Syntax
SELECT column_name(s)
FROM table1
INNER JOIN table2 ON table1.column_name = table2.column_name;

-- Example
SELECT Orders.OrderID, Customers.CustomerName, Orders.OrderDate
FROM Orders
INNER JOIN Customers (NOLOCK) ON Orders.CustomerID = Customers.CustomerID;

-- Example 2
SELECT Orders.OrderID, Customers.CustomerName, Shippers.ShipperName
FROM Orders
INNER JOIN Customers (NOLOCK) ON Orders.CustomerID = Customers.CustomerID
INNER JOIN Shippers (NOLOCK) ON Orders.ShipperID = Shippers.ShipperID;