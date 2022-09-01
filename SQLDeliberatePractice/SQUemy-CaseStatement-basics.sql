/****** Script for SelectTopNRows command from SSMS  ******/
SELECT  TOP (3)
		[EmployeeID]
      ,[TerritoryID]
	  ,
	  Case 
	  When TerritoryID = 06897 then 'Chicagoland'
	  when territoryID = 19713 then 'Hillside'
	  when territoryID = 01581 then 'Oswego'
	  End As 'Territory Name'
  FROM [Northwind].[dbo].[EmployeeTerritories]

  --
  SELECT TOP (3)
	   [EmployeeID]
      ,[TerritoryID]
	  ,
	  Case TerritoryID
	  When 06897 then 'Chicagoland'
	  when 19713 then 'Hillside'
	  when 01581 then 'Oswego'
	  End As 'Territory Name'
  FROM [Northwind].[dbo].[EmployeeTerritories]

  --
    SELECT TOP (6)
	   [EmployeeID]
      ,[TerritoryID]
	  ,
	  Case TerritoryID
	  When 06897 then 'Chicagoland'
	  when 19713 then 'Hillside'
	  when 01581 then 'Oswego'
	  Else 'New Territory'
	  End As 'Territory Name'
  FROM [Northwind].[dbo].[EmployeeTerritories]