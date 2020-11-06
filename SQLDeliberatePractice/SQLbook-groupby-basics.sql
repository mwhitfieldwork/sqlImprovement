-- Group By
-- the Group By must be equivalent to a slect or subset of select items. 
-- you can make groups only out of things you select
select sum(p.UnitsInStock) as productSum, p.ProductName
from Northwind.dbo.Products p
group by p.ProductName

select count(p.UnitsInStock) as unitstockCount, p.ProductName
from Northwind.dbo.Products p
group by p.CategoryID, p.ProductName