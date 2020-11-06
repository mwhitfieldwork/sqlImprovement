-- Order By

select p.Name, p.Price
from CityTour.dbo.Product p
Order By p.Name

select c.CompanyName, c.ContactTitle
from Northwind.dbo.Customers c
order by c.CompanyName desc, c.ContactTitle asc

--Concat
select
CONCAT(c.ContactName, ',', c.contactTitle) fulltitle
from Northwind.dbo.Customers c
order by CONCAT(c.ContactName, ',', c.ContactTitle) desc

