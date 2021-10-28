SQL RIGHT JOIN

-- A RIGHT JOINpalavra-chave retorna todos os registros da tabela direita (tabela2) e os registros correspondentes da tabela esquerda (tabela1). O resultado é 0 registros do lado esquerdo, se não houver correspondência.
-- The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.

-- RIGHT JOIN Syntax
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;

-- Example 1
SELECT Orders.OrderID, Employees.LastName, Employees.FirstName
FROM Orders
RIGHT JOIN Employees ON Orders.EmployeeID = Employees.EmployeeID
ORDER BY Orders.OrderID;