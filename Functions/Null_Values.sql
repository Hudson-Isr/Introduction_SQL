/*
Como testar valores NULL? // How to Test for NULL Values?
Não é possível testar os valores NULL com operadores de comparação, como =, < ou <>. // It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
Teremos que usar os operadores IS NULLe IS NOT NULLem vez disso. // We will have to use the IS NULL and IS NOT NULL operators instead.
*/

-- Sintaxe IS NULL
SELECT column_names
FROM table_name
WHERE column_name IS NULL;
--EX
SELECT *
FROM Person.Person
WHERE Title IS NULL;

-- IS NOT NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
--EX
SELECT *
FROM Person.Person
WHERE Title IS NOT NULL;