/* Trabalho Final DB
   Data: 30/11/2021
   Autor: Vitor Santana */
   
   # Pesquisa de Verificação
Select * from products;
   
   # Utilizando < Select_1
SELECT * FROM products
WHERE
buyPrice < 100
ORDER BY buyPrice ASC;

   # Utilizando > Select_2
SELECT * FROM products
WHERE
buyPrice > 100
ORDER BY buyPrice ASC;

   # Utilizando >= Select_3
SELECT * FROM products
WHERE
buyPrice >= 100
ORDER BY buyPrice ASC;

   # Utilizando <= Select_4
SELECT * FROM products
WHERE
buyPrice <= 100
ORDER BY buyPrice ASC;

   # Utilizando != Select_5
SELECT * FROM products
WHERE
buyPrice != 100
ORDER BY buyPrice ASC;

 # Utilizando >= and <=
SELECT * FROM customers
WHERE
creditLimit >= 25000 AND creditLimit <= 100000
ORDER BY creditLimit ASC;

 # Utilizando >= and <=
SELECT * FROM customers
WHERE
creditLimit != 0 AND creditLimit <= 100000
ORDER BY creditLimit ASC;

 # Utilizando >= or <=
SELECT * FROM customers
WHERE
creditLimit = 25000 or creditLimit < 25000
ORDER BY creditLimit ASC;

# Utilizando between
SELECT * FROM customers
WHERE
creditLimit BETWEEN 25000 AND 100000
ORDER BY creditLimit ASC;

# Utilizando between
SELECT * FROM customers
WHERE
creditLimit BETWEEN 1 AND 100000
ORDER BY creditLimit ASC;

#SELECT COM ALTERAÇÃO DOS TITULOS DA TABELA COM ASC
SELECT (firstName) AS 'NOME',
(lastName) AS 'SOBRENOME',
(email) AS 'E-mail' FROM employees
ORDER BY NOME ASC;

#SELECT COM ALTERAÇÃO DOS TITULOS DA TABELA COM DESC
SELECT (firstName) AS 'NOME',
(lastName) AS 'SOBRENOME',
(email) AS 'E-mail' FROM employees
ORDER BY NOME DESC;

#VERIFICAÇÃO DE TABELA
SELECT * FROM customers;

#SELECT COM ALTERAÇÃO DOS TITULOS DA TABELA COM ASC E LIKE
SELECT (customerName) AS 'NOME',
(contactLastName) AS 'SOBRENOME',
(phone) AS 'CONTATO' FROM customers
WHERE phone LIKE '+34%'
ORDER BY NOME ASC;

#SELECT COM ALTERAÇÃO DOS TITULOS DA TABELA COM DESC E LIKE
SELECT (customerName) AS 'NOME',
(contactLastName) AS 'SOBRENOME',
(phone) AS 'CONTATO' FROM customers
WHERE phone LIKE '%55'
ORDER BY NOME DESC;

#SELECT COM ALTERAÇÃO DOS TITULOS DA TABELA COM DESC E NOT LIKE
SELECT (customerName) AS 'NOME',
(contactLastName) AS 'SOBRENOME',
(phone) AS 'CONTATO' FROM customers
WHERE phone NOT LIKE '%55'
ORDER BY NOME DESC;


#VERIFICAÇÃO DE TABELA
SELECT * FROM products;

#VERIFICAÇÃO DE TABELA
SELECT * FROM productlines;

# SELECT COM INNER JOIN e
SELECT 
td.productName, 
td.productScale,
td.buyPrice,
tc.textDescription
FROM products td
INNER JOIN productlines tc 
ON td.productLine = tc.productLine
ORDER BY td.productName ASC;

# SELECT COM INNER JOIN e USING
SELECT 
td.productName, 
td.productScale,
td.buyPrice,
tc.textDescription
FROM products td
INNER JOIN productlines tc USING (productLine)
ORDER BY td.productName ASC;


