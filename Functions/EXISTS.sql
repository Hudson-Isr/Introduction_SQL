The SQL EXISTS Operator

--O EXISTS operador é usado para testar a existência de qualquer registro em uma subconsulta.
-- The EXISTS operator is used to test for the existence of any record in a subquery.

-- O EXIST Soperador retorna TRUE se a subconsulta retornar um ou mais registros.
-- The EXISTS operator returns TRUE if the subquery returns one or more records.

-- EXISTS Syntax
SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);

-- Example 1
-- A seguinte instrução SQL retorna TRUE e lista os fornecedores com um preço de produto inferior a 20:
-- The following SQL statement returns TRUE and lists the suppliers with a product price less than 20:
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price < 20);

-- Example 2
-- A seguinte instrução SQL retorna TRUE e lista os fornecedores com um preço de produto igual a 22:
-- The following SQL statement returns TRUE and lists the suppliers with a product price equal to 22:
SELECT SupplierName
FROM Suppliers
WHERE EXISTS (SELECT ProductName FROM Products WHERE Products.SupplierID = Suppliers.supplierID AND Price = 22);