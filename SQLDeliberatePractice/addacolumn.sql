begin try 
	begin transaction 
	if not exists(select * from INFORMATION_SCHEMA.COLUMNS where TABLE_NAME = 'Products' and COLUMN_NAME = 'IsDeleted')
		begin
			ALTER TABLE products
			ADD isDeleted BIT NOT NULL DEFAULT 0
		end
	else
		begin
			print 'column already exists'
		end
	commit transaction
end try 
begin catch
	rollback transaction
	raiserror('could not alter tables', 16,1)
end catch

