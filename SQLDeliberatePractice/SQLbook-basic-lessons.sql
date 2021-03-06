use CityTour
go

-- Operators in sql statements and using an alias for a returned column
SELECT Name, Price *2 as DoublePrice
  FROM [CityTour].[dbo].[Product]

  -- when you perform an operation on a null value the result is still null  
  -- you can also do operations on columns as well 
  
  -- arithmatic operator precedence (parenthesis, multiplication or division, addition or subtraction)
  SELECT Name, (Price /2) - 50 as DividedPriceWithTax 
  from [CityTour].[dbo].[product]

  -- make an alias for the table that is being queried
  select p.Name, p.Price
  from [CityTour].[dbo].Product p

  
  