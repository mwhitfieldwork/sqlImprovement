--alias
select p.UnitPrice *2 as PriceDoubled, p.ProductName 
from Northwind.dbo.Products p
order by p.UnitPrice

select p.UnitPrice  - 100 PriceDeducted, 