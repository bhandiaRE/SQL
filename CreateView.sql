CREATE VIEW [dbo].[Total]
AS
SELECT [dbo].[DimSalesTerritory].[SalesTerritoryRegion],
[dbo].[DimSalesTerritory].[SalesTerritoryGroup],
[dbo].[DimGeography].[City],
[dbo].[DimGeography].[FrenchCountryRegionName],
[dbo].[DimGeography].[CountryRegionCode],
[dbo].[DimGeography].[EnglishCountryRegionName],
[dbo].[DimGeography].[StateProvinceCode]
FROM [dbo].[DimGeography] INNER JOIN
[dbo].[DimSalesTerritory] ON [dbo].[DimGeography].[SalesTerritoryKey] =[dbo].[DimSalesTerritory].[SalesTerritoryKey]
