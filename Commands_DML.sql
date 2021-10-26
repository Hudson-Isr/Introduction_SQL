/*
DML - Data Manipulation Language - Linguagem de manipulação de dados, são comandos utilizados para interagir com os dados dentro das tabelas, por exemplo os comandos: UPDATE, DELETE, INSERT.

A instrução SQL UPDATE  // The SQL UPDATE Statement
A UPDATE instrução é usada para modificar os registros existentes em uma tabela. // The UPDATE statement is used to modify the existing records in a table.
*/

--UPDATE Syntax
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
--EX 1
UPDATE Person.Person
SET FirstName = 'Alfred Schmidt', LastName = 'Frankfurt'
WHERE BusinessEntityID = 5;

/*
ATUALIZAR vários registros // UPDATE Multiple Records
É a WHERE cláusula que determina quantos registros serão atualizados. // It is the WHERE clause that determines how many records will be updated.
A seguinte instrução SQL atualizará o ContactName para "Juan" para todos os registros em que country seja "Mexico": // The following SQL statement will update the ContactName to "Juan" for all records where country is "Mexico":
*/

--EX
UPDATE Customers
SET ContactName='Juan'
WHERE Country='Mexico';

-- Tenha cuidado ao atualizar os registros. Se você omitir a WHEREcláusula, TODOS os registros serão atualizados!
-- Be careful when updating records. If you omit the WHERE clause, ALL records will be updated!

UPDATE Customers
SET ContactName='Juan';

/*
A instrução SQL DELETE // The SQL DELETE Statement
A DELETE instrução é usada para excluir registros existentes em uma tabela. // The DELETE statement is used to delete existing records in a table.
*/

--Sintaxe DELETE
DELETE FROM table_name WHERE condition;
--EX
DELETE FROM Customers WHERE CustomerName='Alfreds Futterkiste';

--Apagar todos os registros // Delete All Records
--É possível excluir todas as linhas de uma tabela sem excluir a tabela. Isso significa que a estrutura, os atributos e os índices da tabela ficarão intactos: //It is possible to delete all rows in a table without deleting the table. This means that the table structure, attributes, and indexes will be intact:

DELETE FROM table_name;

/*
A instrução SQL INSERT INTO // The SQL INSERT INTO Statement

A INSERT INTOinstrução é usada para inserir novos registros em uma tabela. // The INSERT INTO statement is used to insert new records in a table.
Sintaxe INSERT INTO
É possível escrever a INSERT INTO declaração de duas maneiras: // It is possible to write the INSERT INTO statement in two ways:
*/

-- 1. Especifique os nomes das colunas e os valores a serem inseridos:
-- 1. Specify both the column names and the values to be inserted:
INSERT INTO table_name (column1, column2, column3, ...)
VALUES (value1, value2, value3, ...);

--EX
INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

-- 2. Se você estiver adicionando valores para todas as colunas da tabela, não será necessário especificar os nomes das colunas na consulta SQL. No entanto, certifique-se de que a ordem dos valores esteja na mesma ordem das colunas da tabela. Aqui, a INSERT INTOsintaxe seria a seguinte:
-- 2. If you are adding values for all the columns of the table, you do not need to specify the column names in the SQL query. However, make sure the order of the values is in the same order as the columns in the table. Here, the INSERT INTO syntax would be as follows:
INSERT INTO table_name
VALUES (value1, value2, value3, ...);