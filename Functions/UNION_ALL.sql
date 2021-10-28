The SQL UNION Operator

-- O UNION operador é usado para combinar o conjunto de resultados de duas ou mais SELECT instruções.
--The UNION operator is used to combine the result-set of two or more SELECT statements.

-- Cada SELECT declaração dentro UNIONdeve ter o mesmo número de colunas
-- Every SELECT statement within UNION must have the same number of columns

--As colunas também devem ter tipos de dados semelhantes
-- The columns must also have similar data types

--As colunas em cada SELECT declaração também devem estar na mesma ordem
-- The columns in every SELECT statement must also be in the same order

-- UNION Syntax
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;

--Sintaxe UNION ALL
-- O UNIO Noperador seleciona apenas valores distintos por padrão. Para permitir valores duplicados, use UNION ALL:

SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;

-- Exemplo SQL UNION
-- A seguinte instrução SQL retorna as cidades (apenas valores distintos) das tabelas "Clientes" e "Fornecedores":
-- The following SQL statement returns the cities (only distinct values) from both the "Customers" and the "Suppliers" table:

-- Example 1
SELECT City FROM Customers
UNION
SELECT City FROM Suppliers
ORDER BY City;

SELECT City FROM Customers
UNION ALL
SELECT City FROM Suppliers
ORDER BY City;

-- Example 2
SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;

SELECT City, Country FROM Customers
WHERE Country='Germany'
UNION ALL
SELECT City, Country FROM Suppliers
WHERE Country='Germany'
ORDER BY City;