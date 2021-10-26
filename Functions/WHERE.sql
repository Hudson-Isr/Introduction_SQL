-- Example 1, Result of only selected names. 
-- Exemplo 1, Resultado de apenas nomes selecionados.

SELECT *
FROM Person.Person
WHERE LastName = 'miller' and FirstName = 'anna'

-- Example 2, Result of only blue and black producer.
-- Exemplo 2, Resultado de apenas produtor blue and black.

SELECT *
FROM Production.Product
WHERE Color = 'blue' and Color = 'black'

-- Example 3, Result of products from 1500 to 5000.
-- Exemplo 3, Resultado de produtos de 1500 ate 5000.


SELECT *
FROM Production.Product
WHERE Listprice > 1500 and Listprice < 5000

-- Example 4, Result of products other than red
-- Exemplo 4, Resultado de produtos diferente de red.

SELECT *
FROM Production.Product
WHERE Color <> 'red'

-- Desafio!, Challenge!

-- 1- Preciso dos produtos e o nome de todas as peças que pesam mais que 500kg mas não mais que 700kg para inspeção.
-- 1- I need the products and the name of all the parts that weigh more than 500kg but not more than 700kg for inspection.

SELECT name
FROM Production.Product
WHERE Weight >500 and Weight <= 700

-- 2- Foi pedido uma relação de todos os empregados que são casados e são assalariados.
-- 2- A list of all employees who are married and salaried was requested.

Select MaritalStatus, SalariedFlag
from HumanResources.Employee
where MaritalStatus = 'm' and SalariedFlag = 1

-- 3- Um usuário chamado Peter krebs está devendo um pagamento, consiga o e-mail dele para que possamos enviar uma cobrança.
-- 3- A user named Peter krebs is owing a payment, get his email so we can send you a charge.

SELECT EmailAddress
FROM Person.EmailAddress
WHERE BusinessEntityID = 26