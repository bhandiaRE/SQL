USE OLTP
GO
SELECT *
FROM [dbo].[Transactions]


SELECT transactionid,[description],customerid,SUM(retail_price)
FROM [dbo].[Transactions]
GROUP BY customerid,transactionid,[description]
HAVING SUM(retail_price) > 70
ORDER BY transactionid

SELECT *
FROM [dbo].[Transactions]
WHERE firstname like 'j%'

SELECT TOP 5 firstname,surname, loyalty_discount
FROM [dbo].[Transactions]
WHERE firstname LIKE 'L%' AND  loyalty_discount > 0.02
group by firstname,surname, loyalty_discount
ORDER BY firstname
