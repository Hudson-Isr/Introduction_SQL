The SQL SELECT INTO Statement

-- A SELECT INTO instrução copia dados de uma tabela em uma nova tabela.
-- The SELECT INTO statement copies data from one table into a new table.

SELECT INTO Syntax
-- Copie todas as colunas em uma nova tabela:
-- Copy all columns into a new table:

SELECT *
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

-- Copie apenas algumas colunas em uma nova tabela:
-- Copy only some columns into a new table:
SELECT column1, column2, column3, ...
INTO newtable [IN externaldb]
FROM oldtable
WHERE condition;

-- Example 1
-- A seguinte instrução SQL cria uma cópia de backup dos clientes:
-- The following SQL statement creates a backup copy of Customers:
SELECT * INTO CustomersBackup2017
FROM Customers;

-- Example 2
-- A seguinte instrução SQL usa a INcláusula para copiar a tabela em uma nova tabela em outro banco de dados:
-- The following SQL statement uses the IN clause to copy the table into a new table in another database:
SELECT * INTO CustomersBackup2017 IN 'Backup.mdb'
FROM Customers;

-- Example 3
-- A seguinte instrução SQL copia apenas algumas colunas em uma nova tabela:
-- The following SQL statement copies only a few columns into a new table:
SELECT CustomerName, ContactName INTO CustomersBackup2017
FROM Customers;

-- Example 4
-- A seguinte instrução SQL copia apenas os clientes alemães em uma nova tabela:
-- The following SQL statement copies only the German customers into a new table:
SELECT * INTO CustomersGermany
FROM Customers
WHERE Country = 'Germany';

-- Example 5
-- A seguinte instrução SQL copia dados de mais de uma tabela em uma nova tabela:
-- The following SQL statement copies data from more than one table into a new table:
SELECT Customers.CustomerName, Orders.OrderID
INTO CustomersOrderBackup2017
FROM Customers
LEFT JOIN Orders ON Customers.CustomerID = Orders.CustomerID;