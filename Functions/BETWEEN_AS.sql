The SQL BETWEEN Operator

-- O BETWEEN operador seleciona valores dentro de um determinado intervalo. Os valores podem ser números, texto ou datas.
-- The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.

-- O BETWEEN operador é inclusivo: os valores inicial e final são incluídos. 
-- The BETWEEN operator is inclusive: begin and end values are included. 

-- BETWEEN Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;

-- EX
SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 and 1500;

SELECT *
FROM Production.Product
WHERE ListPrice  NOT BETWEEN 1000 and 1500;

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate;

-- Quantos produtos vermelhos tem o preço entre 500 a 1000 dolares?
-- How many red products are priced between $500 to $1000?
SELECT *
FROM Production.Product
WHERE Color = 'red' AND ListPrice BETWEEN '500' and '1000'

-- Selecione todos os produtos vermelhos com o preço entre 500 a 1000 exceto os produtos com o ProductID 731 e 732.
-- Select all red products with price between 500 to 1000 except products with ProductID 731 and 732.
SELECT *
FROM Production.Product
WHERE Color = 'red' AND ListPrice BETWEEN '500' and '1000'
AND ProductID NOT IN (731,732)

SQL AS

-- Os aliases SQL são usados ​​para dar a uma tabela ou coluna de uma tabela um nome temporário.
-- SQL aliases are used to give a table, or a column in a table, a temporary name.

-- Os apelidos costumam ser usados ​​para tornar os nomes das colunas mais legíveis.
-- Aliases are often used to make column names more readable.

-- Um alias existe apenas durante essa consulta.
-- An alias only exists for the duration of that query.

-- Alias Column Syntax
SELECT column_name AS alias_name
FROM table_name;

--Alias Table Syntax
SELECT column_name(s)
FROM table_name AS alias_name;