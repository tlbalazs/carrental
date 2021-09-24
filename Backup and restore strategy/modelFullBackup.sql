BACKUP DATABASE [model] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\model.bak' WITH RETAINDAYS = 14, NOFORMAT, NOINIT,  NAME = N'model-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10, CHECKSUM
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'model' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'model' )
if @backupSetId is null begin raiserror(N'Verify failed. Backup information for database ''model'' not found.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\model.bak' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO
