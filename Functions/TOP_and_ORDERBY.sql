-- A cláusula SQL SELECT TOP
-- The SQL SELECT TOP Clause

--A SELECT TOP cláusula é usada para especificar o número de registros a serem retornados.
--The SELECT TOP clause is used to specify the number of records to return.
--A SELECT TOP cláusula é útil em grandes tabelas com milhares de registros. Retornar um grande número de registros pode afetar o desempenho.
--The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.

Nota: Nem todos os sistemas de banco de dados suportam a SELECT TOP cláusula. O MySQL oferece suporte à LIMITcláusula para selecionar um número limitado de registros, enquanto o Oracle usa e . FETCH FIRST n ROWS ONLYROWNUM

-- TOP (Número de linhas).
-- TOP (number of lines).

--SQL Server / MS Access Syntax:
SELECT TOP number|percent column_name(s)
FROM table_name
WHERE condition;

--MySQL Syntax:
SELECT column_name(s)
FROM table_name
WHERE condition
LIMIT number;

--Oracle 12 Syntax:
SELECT column_name(s)
FROM table_name
ORDER BY column_name(s)
FETCH FIRST number ROWS ONLY;

--Older Oracle Syntax:
SELECT column_name(s)
FROM table_name
WHERE ROWNUM <= number;

--Older Oracle Syntax (with ORDER BY):
SELECT *
FROM (SELECT column_name(s) FROM table_name ORDER BY column_name(s))
WHERE ROWNUM <= number;

--A ORDER BY palavra-chave é usada para classificar o conjunto de resultados em ordem crescente ou decrescente.
--The ORDER BY keyword is used to sort the result-set in ascending or descending order.

-- ORDER BY
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;

-- Desafio!, Challenge!
-- Obter o productId dos 10 produtos mais caros cadastrados no sistema, listado do mais caro para o mais barato.
-- Get the productId of the 10 most expensive products registered in the system, listed from the most expensive to the cheapest.

SELECT ProductID, ListPrice
FROM Production.Product
ORDER BY ListPrice DESC

SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice DESC

-- Challenge
-- Obter o nome e numero de produto dos produtos que tem em ProductID entre 1~4
-- Get the name and product number of the products that have in ProductID between 1~4

SELECT TOP 4 name, productNumber
FROM Production.Product
ORDER BY ProductID