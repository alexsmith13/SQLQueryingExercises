EXEC sp_addmessage 50069,16, 'Vendor %s cannot be found'
GO
RAISERROR(50069,16,1,'Red Hat')
GO