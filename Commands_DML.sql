
-- DML - Data Manipulation Language - Linguagem de manipulação de dados, são comandos utilizados para interagir com os dados dentro das tabelas, por exemplo os comandos: UPDATE, DELETE, INSERT.

The SQL UPDATE Statement
-- A UPDATE instrução é usada para modificar os registros existentes em uma tabela.
-- The UPDATE statement is used to modify the existing records in a table.

--UPDATE Syntax
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;

--  A instrução SQL a seguir atualiza o primeiro cliente (CustomerID = 1) com uma nova pessoa de contato e uma nova cidade.
-- The following SQL statement updates the first customer (CustomerID = 1) with a new contact person and a new city.
-- Example 1 
UPDATE Customers
SET ContactName = 'Alfred Schmidt', City= 'Frankfurt'
WHERE CustomerID = 1;
-- Example 2
UPDATE Person.Person
SET FirstName = 'Alfred Schmidt', LastName = 'Frankfurt'
WHERE BusinessEntityID = 5;


-- ATUALIZAR vários registros
-- UPDATE Multiple Records

-- É a WHERE cláusula que determina quantos registros serão atualizados.
-- It is the WHERE clause that determines how many records will be updated.

-- A seguinte instrução SQL atualizará o ContactName para "Juan" para todos os registros em que country seja "Mexico":
-- The following SQL statement will update the ContactName to "Juan" for all records where country is "Mexico":

-- Example 2
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

-- Tenha cuidado ao atualizar os registros. Se você omitir a WHEREcláusula, TODOS os registros serão atualizados!
-- Be careful when updating records. If you omit the WHERE clause, ALL records will be updated!

UPDATE Customers
SET ContactName='Juan';

The SQL DELETE Statement

-- The DELETE statement is used to delete existing records in a table.
DELETE Syntax
DELETE FROM table_name WHERE condition;

-- Example 1
-- A seguinte instrução SQL exclui o cliente "Alfreds Futterkiste" da tabela "Clientes":
-- The following SQL statement deletes the customer "Alfreds Futterkiste" from the "Customers" table:
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

-- Delete All Records
-- É possível excluir todas as linhas de uma tabela sem excluir a tabela. Isso significa que a estrutura, os atributos e os índices da tabela ficarão intactos:
-- It is possible to delete all rows in a table without deleting the table. This means that the table structure, attributes, and indexes will be intact:
DELETE FROM table_name;

-- Example 2
-- A seguinte instrução SQL exclui todas as linhas da tabela "Clientes", sem excluir a tabela:
-- The following SQL statement deletes all rows in the "Customers" table, without deleting the table:
DELETE FROM Customers;

The SQL INSERT INTO SELECT Statement

-- A INSERT INTO SELECT instrução copia dados de uma tabela e os insere em outra tabela.
-- The INSERT INTO SELECT statement copies data from one table and inserts it into another table.

-- A INSERT INTO SELECT instrução requer que os tipos de dados nas tabelas de origem e destino correspondam.
-- The INSERT INTO SELECT statement requires that the data types in source and target tables matches.

INSERT INTO SELECT
-- Copie todas as colunas de uma tabela para outra:
-- Copy all columns from one table to another table:
INSERT INTO table2
SELECT * FROM table1
WHERE condition;

-- Copie apenas algumas colunas de uma tabela para outra:
-- Copy only some columns from one table into another table:
INSERT INTO table2 (column1, column2, column3, ...)
SELECT column1, column2, column3, ...
FROM table1
WHERE condition;

-- A seguinte instrução SQL copia "Fornecedores" em "Clientes" (as colunas que não são preenchidas com dados conterão NULL):
-- The following SQL statement copies "Suppliers" into "Customers" (the columns that are not filled with data, will contain NULL):
-- Example 1
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers;

-- A seguinte instrução SQL copia "Fornecedores" em "Clientes" (preencha todas as colunas):
-- The following SQL statement copies "Suppliers" into "Customers" (fill all columns):
-- Example 2
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
SELECT SupplierName, ContactName, Address, City, PostalCode, Country FROM Suppliers;

-- A seguinte instrução SQL copia apenas os fornecedores alemães em "Clientes":
-- The following SQL statement copies only the German suppliers into "Customers":
-- Example 3
INSERT INTO Customers (CustomerName, City, Country)
SELECT SupplierName, City, Country FROM Suppliers
WHERE Country='Germany';