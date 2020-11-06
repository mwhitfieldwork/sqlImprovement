--Between
select p.UnitPrice
from Northwind.dbo.Products p
where p.UnitPrice between 100 and 200

select p.UnitPrice, p.ProductName
from Northwind.dbo.Products p
where p.UnitPrice <= 100 and p.UnitPrice >= 50

select e.LastName , e.FirstName
from Northwind.dbo.Employees e
where e.BirthDate between '1950-01-01' and '1980-01-01'

select p.UnitPrice
from Northwind.dbo.Products p
where p.UnitPrice not between 18 and 19

