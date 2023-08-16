-- Where AND Having
--places the conditions on the grupps created by the group buy clause
-- the wehre clasue is processed after the from clause and before the group clause
-- the having is processed after the group clause

  select sum(unitPrice) as 'gross unit price'
  from products
  group by SupplierID Having supplierID = 1 order by SupplierID desc

  -- we can use and aggragate function in the having but not the where, because the having is processed after the group by
  -- the data sum the sum of the unti price is greater that 20
  -- a where clause will use an index and a having will not
    select sum(unitPrice) as 'gross unit price'
  from products
  group by SupplierID Having sum(unitPrice) > 50 order by SupplierID desc

  -- WHEN to ue the where clause instead of a having...
  -- If the filtering can happen without the having, then use the where clause - it imporves performance
