-- Where AND Having
--places the conditions on the grupps created by the group buy clause
  select sum(unitPrice) as 'gross unit price'
  from products
  group by SupplierID Having supplierID = 1 order by SupplierID desc