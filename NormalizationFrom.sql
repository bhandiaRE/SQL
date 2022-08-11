USE OLTP
GO
-- FIRST Normal Form(DISTINCT ROWS)
SELECT DISTINCT *
FROM [dbo].[Transactions]

-- SECOND Normal Form(DISTINCT ROWS)
SELECT customerid,
		[name],
		surname,
		shipping_state,
		loyalty_discount
INTO TMP
FROM [dbo].[Transactions]

SELECT DISTINCT * 
INTO Customers
FROM [dbo].[TMP]

SELECT *
FROM [dbo].[Customers]

--REMOVE CUSTOMER  COLUMN
ALTER TABLE [dbo].[Transactions]
DROP COLUMN [name],
		surname,
		shipping_state,
		loyalty_discount

--THIRD Normal Form(DISTINCT ROWS)
SELECT item,
		[description],
		retail_price
INTO TMP
FROM [dbo].[Transactions]

SELECT DISTINCT * 
INTO Items
FROM [dbo].[TMP]

SELECT *
FROM [dbo].[Items]

--REMOVE CUSTOMER  COLUMN
ALTER TABLE [dbo].[Transactions]
DROP COLUMN [description],
		retail_price
