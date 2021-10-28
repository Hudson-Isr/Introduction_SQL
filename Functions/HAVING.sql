The SQL HAVING Clause

-- A HAVING cláusula foi adicionada ao SQL porque a WHEREpalavra - chave não pode ser usada com funções agregadas.
-- The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.

-- HAVING Syntax
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);

-- Example 1
-- A instrução SQL a seguir lista o número de clientes em cada país. Incluir apenas países com mais de 5 clientes:
--The following SQL statement lists the number of customers in each country. Only include countries with more than 5 customers:
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5;

-- Example 2
-- A seguinte instrução SQL lista o número de clientes em cada país, classificados de cima para baixo (inclua apenas países com mais de 5 clientes):
-- The following SQL statement lists the number of customers in each country, sorted high to low (Only include countries with more than 5 customers):
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
HAVING COUNT(CustomerID) > 5
ORDER BY COUNT(CustomerID) DESC;

-- Example 3
--A seguinte instrução SQL lista os funcionários que registraram mais de 10 pedidos:
-- The following SQL statement lists the employees that have registered more than 10 orders:
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM (Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID)
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 10;

-- Example 4
-- The following SQL statement lists if the employees "Davolio" or "Fuller" have registered more than 25 orders:
-- A seguinte instrução SQL lista se os funcionários "Davolio" ou "Fuller" registraram mais de 25 pedidos:
SELECT Employees.LastName, COUNT(Orders.OrderID) AS NumberOfOrders
FROM Orders
INNER JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
WHERE LastName = 'Davolio' OR LastName = 'Fuller'
GROUP BY LastName
HAVING COUNT(Orders.OrderID) > 25;