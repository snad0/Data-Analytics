/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  c.CustomerKey as [CustomerKey]
      --,[GeographyKey]
      --,[CustomerAlternateKey]
      --,[Title]
      ,c.FirstName as [FirstName]
      --,[MiddleName]
      ,c.LastName as [LastName],
	   c.FirstName + ' ' + c.LastName as [FullName]

      --,[NameStyle]
      --,[BirthDate]
      --,[MaritalStatus]
      --,[Suffix]
      ,CASE  c.Gender when 'M' Then 'Male' when  'F' Then 'Female' end as [Gender]
      --,[EmailAddress]
      --,[YearlyIncome]
      --,[TotalChildren]
     -- ,[NumberChildrenAtHome]
      --,[EnglishEducation]
      ---,[SpanishEducation]
      --,[FrenchEducation]
      --,[EnglishOccupation]
      --,[SpanishOccupation]
     -- ,[FrenchOccupation]
     -- ,[HouseOwnerFlag]
     -- ,[NumberCarsOwned]
     -- ,[AddressLine1]
     -- ,[AddressLine2]
     -- ,[Phone]
      ,c.DateFirstPurchase as [DateFirstPurchase],
      --,[CommuteDistance]
	  g.city as [CustomerCity]
  FROM [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  left join dbo.DimGeography as g on g.GeographyKey=c.GeographyKey
  ORDER BY 
  CustomerKey ASC -- Ordered List by CustomerKey;