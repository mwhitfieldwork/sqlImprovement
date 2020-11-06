--Distinct
select Distinct p.Name
from CityTour.dbo.Product p

--Distinct w/ Aggregate functions
--For example, to count distinct products, you use the DISTINCT operator with the COUNT function as the following query:

select 
	Count(Distinct p.Name)
from CityTour.dbo.Product p

-- Distinct 
-- To calculate the sum of distinct unit prices of products in the products table, you use the DISTINCT operator with the SUM function as follows:
select
	SUM(Distinct p.Price)
from CityTour.dbo.Product p

select 
	Distinct p.UnitPrice
from Northwind.dbo.Products p