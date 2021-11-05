SQL IFNULL(), ISNULL() and COALESCE() Functions

-- Suponha que a coluna "UnitsOnOrder" seja opcional e possa conter valores NULL.
-- Suppose that the "UnitsOnOrder" column is optional, and may contain NULL values.

-- Look at the following SELECT statement:
SELECT ProductName, UnitPrice * (UnitsInStock + UnitsOnOrder)
FROM Products;
-- No exemplo acima, se algum dos valores "UnitsOnOrder" for NULL, o resultado será NULL.
-- In the example above, if any of the "UnitsOnOrder" values are NULL, the result will be NULL.

-- Solutions MySQL
-- A IFNULL() função MySQL permite retornar um valor alternativo se uma expressão for NULL:
-- The MySQL IFNULL() function lets you return an alternative value if an expression is NULL:
SELECT ProductName, UnitPrice * (UnitsInStock + IFNULL(UnitsOnOrder, 0))
FROM Products;

-- ou podemos usar a função, como esta: COALESCE()
-- or we can use the COALESCE() function, like this:
SELECT ProductName, UnitPrice * (UnitsInStock + COALESCE(UnitsOnOrder, 0))
FROM Products;

SQL Server
-- A ISNULL() função SQL Server permite retornar um valor alternativo quando uma expressão é NULL:
-- The SQL Server ISNULL() function lets you return an alternative value when an expression is NULL:
SELECT ProductName, UnitPrice * (UnitsInStock + ISNULL(UnitsOnOrder, 0))
FROM Products;

MS Access
-- A IsNull() função MS Access retorna TRUE (-1) se a expressão for um valor nulo, caso contrário, FALSE (0):
-- The MS Access IsNull() function returns TRUE (-1) if the expression is a null value, otherwise FALSE (0):
SELECT ProductName, UnitPrice * (UnitsInStock + IIF(IsNull(UnitsOnOrder), 0, UnitsOnOrder))
FROM Products;