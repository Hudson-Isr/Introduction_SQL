SQL FULL OUTER JOIN

--A FULL OUTER JOIN palavra-chave retorna todos os registros quando há uma correspondência nos registros da tabela esquerda (tabela1) ou direita (tabela2).
-- The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.

-- FULL OUTER JOIN Syntax
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;

-- Example
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
FULL OUTER JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;