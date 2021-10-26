-- A equipe de marketing precisa do nome e do sobrenome de todos os clientes cadastrados no sistema
-- The marketing team needs the first and last names of all customers who are registered in the system

SELECT FirstName, LastName 
FROM Person.Person

-- Quantos nomes e sobrenomes exclusivos temos em nossa tabela
-- How many unique first and last names do we have in our table person.person

SELECT DISTINCT FirstName, LastName
FROM Person.Person

-- 1 - Quantos produtos cadastrados nas tabelas de produtos.
-- 1 - How many products are registered in the product tables.

SELECT COUNT(*)
FROM Production.Product

-- 2 - Quantos tamanhos de produtos cadastrados nas tabelas.
-- 2 - How many sizes of products registered in the tables.

SELECT COUNT(size)
FROM Production.Product

-- Ex

SELECT COUNT (DISTINCT FirstName)
FROM Person.Person