
-- SELECT WILD CARDS
-- selecxt records that end with the letter 
  select *
  from Customers c
  where c.ContactName like '%a'

-- select records that begin with the letter a
  select *
  from Customers c
  where c.ContactName like 'a%'


-- the underscore leaves blank the missing letters
  select c.City
  from Customers c
  where c.City Like '_erlin'

-- select customers where the contact name start with either a, b, or c
  select *
  from Customers c
  where c.ContactName like '[a-c]%'

-- select rows where the contact name does not start with a, b or c
  select *
  from Customers c
  where c.ContactName not like '[a-c]%'