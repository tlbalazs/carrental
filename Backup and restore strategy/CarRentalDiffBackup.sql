-- Backup set will expire: 14 days --> 14 naponk�nt �jra�r�dnak a diff ment�sek, ez j� mert terv szerint heti rendszeress�ggel ker�lnek szalagra

BACKUP DATABASE [CarRental] TO  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalDiffBackup.bak' WITH  DIFFERENTIAL ,  RETAINDAYS = 14, NOFORMAT, NOINIT,  NAME = N'CarRental-Differential Database Backup', SKIP, NOREWIND, NOUNLOAD,  STATS = 10, CHECKSUM
GO
declare @backupSetId as int
select @backupSetId = position from msdb..backupset where database_name=N'CarRental' and backup_set_id=(select max(backup_set_id) from msdb..backupset where database_name=N'CarRental' )
if @backupSetId is null begin raiserror(N'Verify failed. Backup information for database ''CarRental'' not found.', 16, 1) end
RESTORE VERIFYONLY FROM  DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalDiffBackup.bak' WITH  FILE = @backupSetId,  NOUNLOAD,  NOREWIND
GO

