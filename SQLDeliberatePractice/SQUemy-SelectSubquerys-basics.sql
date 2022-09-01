-- list the suppliers with the number of products they offer
begin try
	begin transaction

		select SupplierId, CompanyName,
				Product = (select COUNT(p.ProductID)
						   from Products p
						   where p.SupplierID = s.SupplierID)
		From Suppliers s
	commit transaction
end try
begin catch
	rollback transaction
	RAISERROR('could not change table', 16, 1)
end catch
	   