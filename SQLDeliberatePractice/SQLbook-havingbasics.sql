-- Where AND Having
  select sum(unitPrice) as 'gross unit price'
  from products
  group by SupplierID Having supplierID = 1 order by SupplierID desc