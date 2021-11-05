The SQL CASE Statement

-- A CASE instrução passa pelas condições e retorna um valor quando a primeira condição é atendida (como uma instrução if-then-else). Portanto, quando uma condição for verdadeira, ela interromperá a leitura e retornará o resultado.
-- The CASE statement goes through conditions and returns a value when the first condition is met (like an if-then-else statement). So, once a condition is true, it will stop reading and return the result. 

-- Se nenhuma condição for verdadeira, ele retornará o valor da ELSE cláusula.
-- If no conditions are true, it returns the value in the ELSE clause.

-- Se não houver nenhuma ELSE parte e nenhuma condição for verdadeira, ele retornará NULL.
-- If there is no ELSE part and no conditions are true, it returns NULL.

CASE Syntax
CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;

-- Example 1
-- O seguinte SQL passa por condições e retorna um valor quando a primeira condição é atendida:
-- The following SQL goes through conditions and returns a value when the first condition is met:
SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;

-- Example 2
-- O seguinte SQL ordenará os clientes por cidade. No entanto, se a cidade for NULL, ordene por país:
-- The following SQL will order the customers by City. However, if City is NULL, then order by Country:

SELECT CustomerName, City, Country
FROM Customers
ORDER BY
(CASE
    WHEN City IS NULL THEN Country
    ELSE City
END);