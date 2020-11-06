--IS
--As in, is not null 
--In databases, NULL is unknown, not applicable or missing information, therefore, you cannot use the comparison operators (=, >,<, etc.,) to check whether a value is NULL or not.
select s.contactname, s.contacttitle
from Northwind.dbo.Suppliers s
where s.Fax is not null

select s.contactname, s.contacttitle, s.fax
from Northwind.dbo.Suppliers s
where s.fax is null
