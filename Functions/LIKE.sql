The SQL LIKE Operator

-- O LIKEoperador é usado em uma WHEREcláusula para pesquisar um padrão especificado em uma coluna.
-- The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.

-- Existem dois curingas geralmente usados ​​em conjunto com o LIKEoperador:
-- There are two wildcards often used in conjunction with the LIKE operator:

-- O sinal de porcentagem (%) representa zero, um ou vários caracteres.
--The percent sign (%) represents zero, one, or multiple characters.

-- O sinal de sublinhado (_) representa um único caractere.
-- The underscore sign (_) represents one, single character.

-- LIKE Sintaxe
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;

-- EX seleciona todos os clientes com um FirstName começando com "a":
-- EX selects all clients with a FirstName starting with "a":
SELECT *
FROM person.Person
WHERE FirstName LIKE 'a%';

-- EX seleciona todos os clientes com um FirstName terminando com "a":
-- EX selects all clients with a FirstName ending with "a":
SELECT *
FROM person.Person
WHERE FirstName LIKE '%a';

-- EX seleciona todos os clientes com um FirstName que têm "ou" em qualquer posição:
-- EX selects all customers with a FirstName that have "ou" in any position:
SELECT *
FROM person.Person
WHERE FirstName LIKE '%ou%';

-- EX seleciona todos os clientes com um FirstName que têm "r" na segunda posição:
-- EX selects all clients with a FirstName that have "r" in the second position:
SELECT *
FROM person.Person
WHERE FirstName LIKE '_r%';

-- EX seleciona todos os clientes com um FirstName que começa com "a" e tem pelo menos 3 caracteres de comprimento:
-- EX selects all clients with a FirstName that starts with "a" and is at least 3 characters long:
SELECT *
FROM person.Person
WHERE FirstName LIKE 'a__%';

-- EX seleciona todos os clientes com um FirstName que começa com "a" e termina com "o":
-- EX selects all clients with a FirstName that starts with "a" and ends with "o":
SELECT *
FROM person.Person
WHERE FirstName LIKE 'a%o';

-- EX seleciona todos os clientes com um FirstName que NÃO comece com "a":
-- EX selects all customers with a FirstName that does NOT start with "a":
SELECT *
FROM person.Person
WHERE FirstName NOT LIKE 'a%';

-- Desafio!, Challenge!

-- Quantas pessoas temos com o sobrenome que inicia com letra P?
-- How many people do we have with a surname that starts with the letter P?
SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'p%'

-- Quantos produtos cadastrados tem a palavra 'road' no nome deles?
-- How many registered products have the word 'road' in their name?
SELECT COUNT (Name)
FROM Production.Product
WHERE Name LIKE '%road%'
