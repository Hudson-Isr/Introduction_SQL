
-- Uma associação automática é uma associação regular, mas a tabela é associada a si mesma.
-- A self join is a regular join, but the table is joined with itself.

-- Self Join Syntax
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;

-- Example 1

-- A seguinte instrução SQL corresponde a clientes que são da mesma cidade:
-- The following SQL statement matches customers that are from the same city:
SELECT A.CustomerName AS CustomerName1, B.CustomerName AS CustomerName2, A.City
FROM Customers A, Customers B
WHERE A.CustomerID <> B.CustomerID
AND A.City = B.City
ORDER BY A.City;