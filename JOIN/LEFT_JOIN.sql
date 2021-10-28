SQL LEFT JOIN

-- A LEFT JOIN palavra-chave retorna todos os registros da tabela esquerda (tabela1) e os registros correspondentes da tabela direita (tabela2). O resultado é 0 registros do lado direito, se não houver correspondência. 
-- The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.

-- LEFT JOIN Syntax
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;

-- Example 1
SELECT *
FROM Orders
LEFT JOIN Customers (NOLOCK) ON Orders.CustomerID = Customers.CustomerID;

-- Example 2 
SELECT Customers.CustomerName, Orders.OrderID
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID
ORDER BY Customers.CustomerName;