-- arithmatic operators goes by parenthesis, multiplication or division then addition or subtraction
SELECT [Name],([Price] /2) - 50 as DividedPriceWithTax 
  FROM [CityTour].[dbo].[Product]