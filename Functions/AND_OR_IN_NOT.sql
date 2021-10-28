
/*Os operadores SQL AND, OR e NOT // The SQL AND, OR and NOT Operators
A WHERE cláusula pode ser combinado com AND, OR e NOT operadores. // The WHERE clause can be combined with AND, OR, and NOT operators.

Os operadores AND e OR são usados ​​para filtrar registros com base em mais de uma condição: // The AND and OR operators are used to filter records based on more than one condition:

O AND operador exibe um registro se todas as condições separadas por AND forem TRUE. // The AND operator displays a record if all the conditions separated by AND are TRUE.
O OR operador exibe um registro se alguma das condições separadas por OR for TRUE. // The OR operator displays a record if any of the conditions separated by OR is TRUE.
O NOT operador exibe um registro se as condições NÃO forem verdadeiras. // The NOT operator displays a record if the condition(s) is NOT TRUE.
*/

-- AND Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 AND condition2 AND condition3 ...;

-- EX AND Syntax
SELECT *
FROM Person.Person
WHERE BusinessEntityID = 2 and FirstName = 'Terri'

--OR Syntax
SELECT column1, column2, ...
FROM table_name
WHERE condition1 OR condition2 OR condition3 ...;

--EX OR Syntax
SELECT *
FROM Person.Person
WHERE BusinessEntityID = 2 OR BusinessEntityID = 7 OR BusinessEntityID = 13

--NOT Syntax
SELECT column1, column2, ...
FROM table_name
WHERE NOT condition;

--EX NOT Syntax
SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN  (2,7,13)

SELECT *
FROM Person.Person
WHERE NOT BusinessEntityID = 2 OR NOT BusinessEntityID = 7 OR NOT BusinessEntityID = 13

/*O operador SQL IN
O IN operador permite que você especifique vários valores em uma WHERE cláusula. // The IN operator allows you to specify multiple values in a WHERE clause.

O IN operador é uma abreviatura para várias OR condições. // The IN operator is a shorthand for multiple OR conditions.
*/

--IN Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name IN (value1, value2, ...);

SELECT column_name(s)
FROM table_name
WHERE column_name IN (SELECT STATEMENT);

--EX IN Syntax
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13)

-- seleciona todos os clientes com o MiddleName na "A", "H" ou "J":
-- selects all clients with MiddleName in "A", "H" or "J":
SELECT *
FROM Person.Person
WHERE MiddleName IN ('A', 'H', 'J')

-- seleciona todos os clientes que não possuem MiddleName na "A", "H" ou "J":
-- selects all clients that do not have MiddleName in "A", "H" or "J":
SELECT *
FROM Person.Person
WHERE MiddleName NOT IN ('A', 'H', 'J')



