Use pets
go

SELECT * 
from [dbo].[Pets] as a 
inner join ProceduresHistory as b
on a.PetID = b.PetID
left join ProceduresDetails as c 
on b.ProcedureType = c.ProcedureType
and b.ProcedureSubCode = c.ProcedureSubCode