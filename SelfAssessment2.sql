USE pets
GO

SELECT DISTINCT TOP 5 [Name],[Description],OwnerID
FROM [dbo].[Pets] AS a 
inner join ProceduresHistory AS b
ON a.PetID = b.PetID
left join ProceduresDetails AS c 
ON b.ProcedureType = c.ProcedureType
and b.ProcedureSubCode = c.ProcedureSubCode
WHERE Gender = 'MALE'
ORDER BY OwnerID

SELECT *
FROM [dbo].[Pets] AS a 
inner join ProceduresHistory AS b
ON a.PetID = b.PetID
WHERE [date] >= '2016-01-01' AND [date] <= '2016-02-30' AND KIND = 'DOG'
ORDER BY [Name]
