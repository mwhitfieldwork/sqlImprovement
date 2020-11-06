use CityTour
go


--Inner join

select p.productname, p.unitprice, c.categoryname
from Northwind.dbo.Products p 
inner join Northwind.dbo.Categories c on c.CategoryID = p.CategoryID


--more than one table join
select p.productname, p.unitprice, c.categoryname, s.CompanyName as supplier
from Northwind.dbo.Products p
inner join northwind.dbo.Categories c on c.CategoryID = p.CategoryID
inner join Northwind.dbo.Suppliers s on s.SupplierID = p.SupplierID

--outer join
--An outer join typically shows you a join plus all the rows that did not qualitfy from 
--the firstnamed table in the join specification. Where the info on the right side of the table can be null
select c.contactname, c.ContactTitle, o.ShipRegion 
from Northwind.dbo.Customers c 
left join Northwind.dbo.Orders o on o.CustomerID = c.CustomerID

--right join
select c.contactname, c.ContactTitle, o.ShipRegion 
from Northwind.dbo.Customers c 
right join Northwind.dbo.Orders o on o.CustomerID = c.CustomerID

--SQL self join is used to join or compare a table to itself. SQL self joins are used to compare values of a column with values of another column in the same table.
select concat(e.lastname,',',e.firstname) fullname
from Northwind.dbo.Employees e
left join Northwind.dbo.Employees m on m.EmployeeID = e.ReportsTo


select e.firstname, e.lastname, m.title
from Northwind.dbo.Employees e
inner join Northwind.dbo.Employees m on e.City = m.City
where e.EmployeeID <> m.EmployeeID and e.firstname like '%Anne'
order by m.Region


select c.ContactName, c.ContactTitle , cc.CustomerTypeID
from Northwind.dbo.Customers c
left join Northwind.dbo.CustomerCustomerDemo cc on c.CustomerID = cc.CustomerID
group by cc.CustomerTypeID, c.ContactName, c.ContactTitle


select c.ContactName, c.ContactTitle,cc.CustomerTypeID,d.CustomerDesc
from Northwind.dbo.Customers c
left join Northwind.dbo.CustomerCustomerDemo as cc
on c.CustomerID = cc.CustomerID
left join Northwind.dbo.CustomerDemographics as d
on cc.CustomerTypeID = d.CustomerTypeID