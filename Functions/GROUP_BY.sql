The SQL GROUP BY

-- A GROUP BY instrução agrupa linhas com os mesmos valores em linhas de resumo, como "encontre o número de clientes em cada país".

-- A GROUP BY indicação é frequentemente utilizado com funções de agregação ( COUNT(), MAX(), MIN(), SUM(), AVG()) para o grupo de resultado-conjunto por uma ou mais colunas.

-- Sintaxe de GROUP BY
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);

-- Example 1 
-- A seguinte instrução SQL lista o número de clientes em cada país:
-- The following SQL statement lists the number of customers in each country:
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country;

-- Example 2
-- A seguinte instrução SQL lista o número de clientes em cada país, classificados de cima para baixo:
-- The following SQL statement lists the number of customers in each country, sorted high to low:
SELECT COUNT(CustomerID), Country
FROM Customers
GROUP BY Country
ORDER BY COUNT(CustomerID) DESC;

-- Example 3
-- A seguinte instrução SQL lista o número de pedidos enviados por cada remetente:
-- The following SQL statement lists the number of orders sent by each shipper:
SELECT Shippers.ShipperName, COUNT(Orders.OrderID) AS NumberOfOrders FROM Orders
LEFT JOIN Shippers ON Orders.ShipperID = Shippers.ShipperID
GROUP BY ShipperName;

