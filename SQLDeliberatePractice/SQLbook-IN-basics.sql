--In
-- The IN operator returns TRUEif the expression or value of the column matches one of the values in the list 
--The IN operator helps you avoid using multiple ORoperators in the WHERE clause
select p.productname, p.unitprice
from Northwind.dbo.Products p
where p.unitprice in(18,19,20)


--Can be combined with not operator
select p.productname, p.unitprice
from Northwind.dbo.Products p
where p.unitprice not in (19,20)

-- The IN operator is also often used in SQL subquery 