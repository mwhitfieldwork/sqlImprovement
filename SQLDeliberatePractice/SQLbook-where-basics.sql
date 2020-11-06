use CityTour
go

-- where clause used in where there are coditions for the query

-- Comparison Operators
select p.Name, p.Price
from CityTour.dbo.Product p
where price > 20 

--comparison operations (And or Not)
select p.Name, p.Price
from CityTour.dbo.product p
where price <20 or price > 50 

--ranges
select p.Name, p.Price
from CityTour.dbo.Product p
where price between 20 and 70

-- Lists
select p.Name, p.Price
from CityTour.dbo.Product p
where Name in ('Modern Art', 'Eiffel Tower')

-- Null
select p.Name, p.Price
from CityTour.dbo.Product p
where Price is null

--Character Matches
select p.Name, p.Price
from CityTour.dbo.Product p
where Name like '%Eiffel%'

-- Logincal Operator Procedance
-- parenthsis, multiplication or diviion, addition or subtraction not , and , or



select p.Name, p.Price
from CityTour.dbo.Product p
where p.Price > 200 or Price is null

select p.Name, p.Price
from CityTour.dbo.Product p
where p.Price >50 and p.Price < 300

--Not
select p.Name, p.Price
from CityTour.dbo.Product p
where not (p.Price > 59)




