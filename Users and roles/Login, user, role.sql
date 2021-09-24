CREATE ROLE [EmpRole] AUTHORIZATION [dbo]
GRANT EXECUTE ON SCHEMA::[Emp] TO [EmpRole]
GRANT SELECT ON [dbo].[VehicleDetail] TO [EmpRole]
GRANT SELECT ON [dbo].[Vehicle] TO [EmpRole]
GRANT SELECT ON [dbo].[Reservation] TO [EmpRole]
GRANT SELECT ON [dbo].[Rental] TO [EmpRole]
GRANT SELECT ON [dbo].[Person] TO [EmpRole]
GO


USE [CarRental]
GO
CREATE ROLE [BARole]
GO
use [CarRental]
GO
GRANT SELECT ON SCHEMA::[pbi] TO [BARole]
GO

--Login, user létrehozás és jogosultság beállítások

USE [CarRental]
GO
CREATE LOGIN [AdmCarRental] WITH PASSWORD=N'Pa55w.rd', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
use[msdb]
CREATE USER [AdmCarRental] FOR LOGIN [AdmCarRental]
GO
use[CarRental]
CREATE USER [AdmCarRental] FOR LOGIN [AdmCarRental]
USE [CarRental]
GO
ALTER ROLE [db_owner] ADD MEMBER [AdmCarRental]
GO
ALTER SERVER ROLE [bulkadmin] ADD MEMBER [AdmCarRental]
GO
USE [msdb]
ALTER ROLE SQLAgentReaderRole ADD MEMBER [AdmCarRental]
ALTER SERVER ROLE [dbcreator] ADD MEMBER [AdmCarRental]

USE [master]
GO
CREATE LOGIN [EmpCarRental] WITH PASSWORD=N'Pa55w.rd', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER SERVER ROLE [bulkadmin] ADD MEMBER [EmpCarRental]
GO
use [CarRental];
GO
use [master];
GO
USE [CarRental]
GO
CREATE USER [EmpCarRental] FOR LOGIN [EmpCarRental]
GO
USE [CarRental]
GO
ALTER ROLE [EmpRole] ADD MEMBER [EmpCarRental]
GO

USE [master]
GO
CREATE LOGIN [BACarRental] WITH PASSWORD=N'Pa55w.rd', DEFAULT_DATABASE=[master], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
USE [CarRental]
GO
CREATE USER [BACarRental] FOR LOGIN [BACarRental]
GO
USE [CarRental]
GO
ALTER ROLE [BARole] ADD MEMBER [BACarRental]
GO

