The SQL MIN() and MAX() Functions

-- A MIN()função retorna o menor valor da coluna selecionada.
-- The MIN() function returns the smallest value of the selected column.

-- A MAX()função retorna o maior valor da coluna selecionada.
-- The MAX() function returns the largest value of the selected column.

--Sintaxe MIN ()
SELECT MIN(column_name)
FROM table_name
WHERE condition;
--EX
SELECT MIN(ListPrice)
FROM Production.Product

--Sintaxe MAX ()
SELECT MAX(column_name)
FROM table_name
WHERE condition;
--EX
SELECT MAX(ListPrice)
FROM Production.Product

The SQL COUNT(), AVG() and SUM() Functions

-- A COUNT() função retorna o número de linhas que correspondem a um critério especificado.
-- The COUNT() function returns the number of rows that matches a specified criterion.

--COUNT() Syntax
SELECT COUNT(column_name)
FROM table_name
WHERE condition;

SELECT COUNT(*)
FROM Production.Product

SELECT COUNT(size)
FROM Production.Product

SELECT COUNT (DISTINCT FirstName)
FROM Person.Person

-- A AVG() função retorna o valor médio de uma coluna numérica. 
-- The AVG() function returns the average value of a numeric column. 

--Sintaxe AVG ()
SELECT AVG(column_name)
FROM table_name
WHERE condition;

SELECT AVG(ListPrice)
FROM Production.product

-- A SUM() função retorna a soma total de uma coluna numérica. 
--The SUM() function returns the total sum of a numeric column. 

--SUM() Syntax
SELECT SUM(column_name)
FROM table_name
WHERE condition;

SELECT SUM(ListPrice)
FROM Production.product