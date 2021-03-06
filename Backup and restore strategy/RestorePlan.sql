USE master
ALTER DATABASE CarRental SET SINGLE_USER WITH ROLLBACK IMMEDIATE
BACKUP LOG CarRental TO DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\Taillog.bak'
   WITH NORECOVERY, NO_TRUNCATE;  

RESTORE DATABASE CarRental FROM DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalFullBackup.bak'   
   WITH NORECOVERY;  

   RESTORE DATABASE CarRental FROM DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalDiffBackup.bak'  
   WITH NORECOVERY;  

RESTORE LOG CarRental FROM DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\CarRentalLogBackup.bak'  
   WITH NORECOVERY;  

RESTORE LOG CarRental FROM DISK = N'C:\Program Files\Microsoft SQL Server\MSSQL15.MSSQLSERVER\MSSQL\Backup\Taillog.bak'  
   WITH NORECOVERY;  

RESTORE DATABASE CarRental
WITH RECOVERY;  

ALTER DATABASE CarRental SET MULTI_USER WITH ROLLBACK IMMEDIATE
