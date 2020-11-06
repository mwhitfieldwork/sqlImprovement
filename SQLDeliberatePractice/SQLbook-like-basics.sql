-- Like
-- The LIKE operator allows you to search for a string of text based on a specified pattern
--Suppose you want to find employee whose last name starts with the letter D, you can use the following query.
select e.firstname, e.lastname
from Northwind.dbo.Employees e
where e.lastname like 'd%'

--To find employees whose first name ends with ‘t’, you can execute the following query:
select e.firstname, e.lastname
from Northwind.dbo.Employees e
where e.firstname like '%t'

-- You can put the wildcard ‘%’ at the beginning and the end of a 
--string to match any string that contains the string within the wildcards. 
--For example, to find employees whose last name contain string 'll‘, 
-- you can use the following query:
select e.firstname, e.lastname
from Northwind.dbo.Employees e
where e.lastname like '%ll%'