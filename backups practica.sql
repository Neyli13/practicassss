

backup database C  to disk= 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\AdventureWorks161222.bak'

backup database AdventureWorks2019  to disk= 'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\AdventureWorks161222d.bak'
with differential 

create procedure copiaBD @bd varchar(30), @nombrecopia varchar(30)
as 
declare @sql varchar (100)
set @sql = 'backup database ' + @bd + 'to disk=' + char(39)+'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\'+@nombrecopia+'.bak'+char(39)
exec (@sql)
go

copiaBD 'AdventureWorks2019', 'AdventureWorks161222f'
