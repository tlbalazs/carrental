BACKUP DATABASE [CarRental] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalFullBackup.bak' WITH NOFORMAT, RETAINDAYS = 14, NOINIT,  NAME = N'CarRental-Full Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10, CHECKSUM
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'CarRental' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'CarRental' )
if @backupSetId is null begin raiserror(N'Verify failed. Backup information for database ''CarRental'' not found.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalFullBackup.bak' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO
