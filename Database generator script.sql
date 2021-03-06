USE [master]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyEventProcessingLogin##]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [##MS_PolicyEventProcessingLogin##] WITH PASSWORD=N'puWkBIReJJTXv/onBZ2sLIRKWdDlbfyEK/hLjNQbv0k=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyEventProcessingLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [##MS_PolicyTsqlExecutionLogin##]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [##MS_PolicyTsqlExecutionLogin##] WITH PASSWORD=N'iZmVwCebxxFKysuZOx6dtkFL6y20drfZHa69WzTcl30=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=ON
GO
ALTER LOGIN [##MS_PolicyTsqlExecutionLogin##] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [AdmCarRental]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [AdmCarRental] WITH PASSWORD=N'Et+pUVZB3wSI9pkqHpQOtfyoTMDkRV1JnNbx5nV13Eo=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [AdmCarRental] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [AdmTeszt]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [AdmTeszt] WITH PASSWORD=N'gAIRfbvuPG0C8XPbhuGhPy09hamq1K8nVvf+QURZkxg=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [AdmTeszt] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [anipatartics519]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [anipatartics519] WITH PASSWORD=N'fDtqVpuEKSytuMlaqqG0ckBvgs0BO9WfcYnAEFIM/Pg=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [anipatartics519] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [BACarRental]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [BACarRental] WITH PASSWORD=N'p93bfovr9TmvYWmNRY7aaOW+hbnMv+Wn51dAA49gWmk=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [BACarRental] DISABLE
GO
/****** Object:  Login [DESKTOP-SR0EERQ\sysadmin]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [DESKTOP-SR0EERQ\sysadmin] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [EmpCarRental]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [EmpCarRental] WITH PASSWORD=N'6ckZjdWGpcJShAzMrUX/394vXmM4YcTpelciXNzlrOA=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [EmpCarRental] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [HMAdmin]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [HMAdmin] WITH PASSWORD=N'JzQX7yNRwJWmramF7T2oEKckDAMmO5vn0xVW/O0TCl8=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [HMAdmin] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [HMRO]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [HMRO] WITH PASSWORD=N'ogMs07uj/MTYI8m5YXaDFyZ76wOBOl6NQiyG7nYbvig=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [HMRO] DISABLE
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [lotbara555]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [lotbara555] WITH PASSWORD=N'21309GdZkXmOBGIsmOnkMV5w2XiHQf5ruO39Qw0aFbI=', DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [lotbara555] DISABLE
GO
/****** Object:  Login [NT AUTHORITY\SYSTEM]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [NT AUTHORITY\SYSTEM] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT Service\MSSQLSERVER]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [NT Service\MSSQLSERVER] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLSERVERAGENT]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [NT SERVICE\SQLSERVERAGENT] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLTELEMETRY]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [NT SERVICE\SQLTELEMETRY] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\SQLWriter]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [NT SERVICE\SQLWriter] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/****** Object:  Login [NT SERVICE\Winmgmt]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [NT SERVICE\Winmgmt] FROM WINDOWS WITH DEFAULT_DATABASE=[master], DEFAULT_LANGUAGE=[us_english]
GO
/* For security reasons the login is created disabled and with a random password. */
/****** Object:  Login [SalesSupport]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE LOGIN [SalesSupport] WITH PASSWORD=N'JRmBpiA7aiGCtfJ9yAlKzj4xJwdTjGLKmsgJO+qOVR8=', DEFAULT_DATABASE=[AdventureWorks2019], DEFAULT_LANGUAGE=[us_english], CHECK_EXPIRATION=OFF, CHECK_POLICY=OFF
GO
ALTER LOGIN [SalesSupport] DISABLE
GO
ALTER SERVER ROLE [dbcreator] ADD MEMBER [AdmCarRental]
GO
ALTER SERVER ROLE [bulkadmin] ADD MEMBER [AdmCarRental]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [DESKTOP-SR0EERQ\sysadmin]
GO
ALTER SERVER ROLE [bulkadmin] ADD MEMBER [EmpCarRental]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT Service\MSSQLSERVER]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLSERVERAGENT]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\SQLWriter]
GO
ALTER SERVER ROLE [sysadmin] ADD MEMBER [NT SERVICE\Winmgmt]
GO
ALTER SERVER ROLE [database_manager] ADD MEMBER [SalesSupport]
GO
USE [CarRental]
GO
/****** Object:  ApplicationRole [RentalWebApp]    Script Date: 2021. 08. 15. 21:38:39 ******/
/* To avoid disclosure of passwords, the password is generated in script. */
declare @idx as int
declare @randomPwd as nvarchar(64)
declare @rnd as float
select @idx = 0
select @randomPwd = N''
select @rnd = rand((@@CPU_BUSY % 100) + ((@@IDLE % 100) * 100) + 
       (DATEPART(ss, GETDATE()) * 10000) + ((cast(DATEPART(ms, GETDATE()) as int) % 100) * 1000000))
while @idx < 64
begin
   select @randomPwd = @randomPwd + char((cast((@rnd * 83) as int) + 43))
   select @idx = @idx + 1
select @rnd = rand()
end
declare @statement nvarchar(4000)
select @statement = N'CREATE APPLICATION ROLE [RentalWebApp] WITH DEFAULT_SCHEMA = [dbo], ' + N'PASSWORD = N' + QUOTENAME(@randomPwd,'''')
EXEC dbo.sp_executesql @statement
GO
/****** Object:  User [AdmCarRental]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE USER [AdmCarRental] FOR LOGIN [AdmCarRental] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [AdmTeszt]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE USER [AdmTeszt] FOR LOGIN [AdmTeszt] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [anipatartics519]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE USER [anipatartics519] FOR LOGIN [anipatartics519] WITH DEFAULT_SCHEMA=[Emp]
GO
/****** Object:  User [BACarRental]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE USER [BACarRental] FOR LOGIN [BACarRental] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [EmpCarRental]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE USER [EmpCarRental] FOR LOGIN [EmpCarRental] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  User [lotbara555]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE USER [lotbara555] FOR LOGIN [lotbara555] WITH DEFAULT_SCHEMA=[Emp]
GO
/****** Object:  DatabaseRole [BARole]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE ROLE [BARole]
GO
/****** Object:  DatabaseRole [EmpRole]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE ROLE [EmpRole]
GO
ALTER AUTHORIZATION ON ROLE::[BARole] TO [dbo]
GO
ALTER AUTHORIZATION ON ROLE::[EmpRole] TO [dbo]
GO
ALTER ROLE [db_owner] ADD MEMBER [AdmCarRental]
GO
ALTER ROLE [db_owner] ADD MEMBER [AdmTeszt]
GO
ALTER ROLE [EmpRole] ADD MEMBER [anipatartics519]
GO
ALTER ROLE [BARole] ADD MEMBER [BACarRental]
GO
ALTER ROLE [EmpRole] ADD MEMBER [EmpCarRental]
GO
ALTER ROLE [EmpRole] ADD MEMBER [lotbara555]
GO
/****** Object:  Schema [Emp]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE SCHEMA [Emp] AUTHORIZATION [dbo]
GO
GRANT EXECUTE ON SCHEMA::[Emp] TO [EmpRole] AS [dbo]
GO
/****** Object:  Schema [pbi]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE SCHEMA [pbi] AUTHORIZATION [dbo]
GO
GRANT SELECT ON SCHEMA::[pbi] TO [BARole] AS [dbo]
GO
/****** Object:  Schema [Rapp]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE SCHEMA [Rapp] AUTHORIZATION [dbo]
GO
GRANT EXECUTE ON SCHEMA::[Rapp] TO [RentalWebApp] AS [dbo]
GO
/****** Object:  UserDefinedFunction [dbo].[GetTotalRentPricePerCar]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     FUNCTION [dbo].[GetTotalRentPricePerCar](@VehicleID int)
RETURNS money
AS
BEGIN
	DECLARE @Price as money
	SELECT @Price = SUM(TotalPrice) FROM Rental R 
	WHERE VehicleID = @VehicleID

	IF (@Price IS NULL)
		SET @Price = 0

	RETURN @Price
END
GO
ALTER AUTHORIZATION ON [dbo].[GetTotalRentPricePerCar] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[NoOfRentalDays]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   FUNCTION [dbo].[NoOfRentalDays](@VehicleID int = NULL)
	RETURNS int 
AS
BEGIN
	IF @VehicleID Is NULL
		RETURN -1
	DECLARE @day int
	SELECT @day = SUM(DATEDIFF(d, RentalDate, RentalEndDate))
	FROM Rental WHERE VehicleID = @VehicleID
	
	IF (@day IS NULL)
		SET @day = 0

	RETURN @day
END
GO
ALTER AUTHORIZATION ON [dbo].[NoOfRentalDays] TO  SCHEMA OWNER 
GO
/****** Object:  UserDefinedFunction [dbo].[VerifyHunPhoneNumber]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   FUNCTION [dbo].[VerifyHunPhoneNumber](@PhoneNumber varchar(15) = NULL)
	RETURNS int
AS
BEGIN	
	IF @PhoneNumber Is NULL
		RETURN -1
	IF (LEFT(@PhoneNumber, 3) NOT LIKE '+36' OR LEFT(@PhoneNumber, 2) NOT LIKE '06')
		SET @PhoneNumber = REPLACE(@PhoneNumber, '+36', '06')
	ELSE 
		RETURN -2

	IF(LEN(@PhoneNumber) <> 11)
		RETURN -3
	ELSE IF TRY_PARSE(RIGHT(@PhoneNumber, LEN(@PhoneNumber)-2) AS int) IS NULL
		RETURN -4
	ELSE IF(SELECT 1 WHERE SUBSTRING(@PhoneNumber, 3, 2) NOT IN ('20', '30', '31', '50', '70')) = 1
		RETURN -5
		
	RETURN 0
END
GO
ALTER AUTHORIZATION ON [dbo].[VerifyHunPhoneNumber] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Person]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[PersonID] [int] IDENTITY(1,1) NOT NULL,
	[LastName] [varchar](50) COLLATE Hungarian_100_CI_AS NOT NULL,
	[FirstName] [varchar](50) COLLATE Hungarian_100_CI_AS NOT NULL,
	[FullName] [varchar](100) COLLATE Hungarian_100_CI_AS NOT NULL,
	[Gender] [tinyint] NULL,
	[PostalCode] [varchar](8) COLLATE Hungarian_100_CI_AS NOT NULL,
	[City] [varchar](50) COLLATE Hungarian_100_CI_AS NOT NULL,
	[Address] [varchar](150) COLLATE Hungarian_100_CI_AS NOT NULL,
	[FullNameI] [varchar](50) COLLATE Hungarian_100_CI_AS NULL,
	[PostalCodeI] [varchar](8) COLLATE Hungarian_100_CI_AS NULL,
	[CityI] [varchar](50) COLLATE Hungarian_100_CI_AS NULL,
	[AddressI] [varchar](150) COLLATE Hungarian_100_CI_AS NULL,
	[Phone] [varchar](50) COLLATE Hungarian_100_CI_AS NOT NULL,
	[Email] [varchar](50) COLLATE Hungarian_100_CI_AS NOT NULL,
	[BirthDate] [date] NOT NULL,
 CONSTRAINT [PK_Person_PersonID] PRIMARY KEY CLUSTERED 
(
	[PersonID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Person] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Person] TO [EmpRole] AS [dbo]
GO
/****** Object:  Table [dbo].[Rental]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rental](
	[RentalID] [int] IDENTITY(1,1) NOT NULL,
	[RentalDate] [date] NOT NULL,
	[RentalEndDate] [date] NOT NULL,
	[PersonID] [int] NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[VehicleID] [int] NOT NULL,
	[ReservationID] [int] NULL,
	[TotalPrice] [money] NULL,
 CONSTRAINT [PK_Rental_RentalID] PRIMARY KEY CLUSTERED 
(
	[RentalID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Rental] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Rental] TO [EmpRole] AS [dbo]
GO
/****** Object:  View [dbo].[ReturningRenter]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [dbo].[ReturningRenter]
AS
	SELECT P.FullName, P.PostalCode, P.City, P.Address, P.Email, COUNT(1) AS 'RentalCount'
	FROM Person P 
		INNER JOIN Rental R ON P.PersonID = R.PersonID
	GROUP BY P.FullName, P.PostalCode, P.City, P.Address, P.Email 
	HAVING COUNT(1) > 8
GO
ALTER AUTHORIZATION ON [dbo].[ReturningRenter] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[EmployeeID] [int] IDENTITY(1,1) NOT NULL,
	[JobTitle] [varchar](50) COLLATE Hungarian_100_CI_AS NULL,
	[HireDate] [date] NOT NULL,
	[PersonID] [int] NOT NULL,
	[WorkplaceID] [int] NOT NULL,
	[Salary] [money] NOT NULL,
 CONSTRAINT [PK_Employee_EmployeeID] PRIMARY KEY CLUSTERED 
(
	[EmployeeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Employee] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Workplace]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Workplace](
	[WorkplaceID] [int] IDENTITY(1,1) NOT NULL,
	[WpAddress] [varchar](150) COLLATE Hungarian_100_CI_AS NOT NULL,
	[WpPostalCode] [varchar](8) COLLATE Hungarian_100_CI_AS NOT NULL,
	[WpCity] [varchar](50) COLLATE Hungarian_100_CI_AS NOT NULL,
	[WpEmail] [varchar](50) COLLATE Hungarian_100_CI_AS NOT NULL,
	[WpPhone] [varchar](50) COLLATE Hungarian_100_CI_AS NOT NULL,
 CONSTRAINT [PK_Workplace_WorkplaceID] PRIMARY KEY CLUSTERED 
(
	[WorkplaceID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Workplace] TO  SCHEMA OWNER 
GO
/****** Object:  View [pbi].[QuarterlyRevenue]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [pbi].[QuarterlyRevenue]
AS
	SELECT YEAR(RentalDate) AS 'Year', DATEPART(Q, RentalDate) AS 'Quarter', W.WpCity, SUM(TotalPrice) AS 'TotalPrice' FROM Rental R
		INNER JOIN Employee E ON R.EmployeeID = E.EmployeeID
		INNER JOIN Workplace W ON W.WorkplaceID = E.WorkplaceID
	GROUP BY YEAR(RentalDate) , DATEPART(Q, RentalDate), W.WpCity
GO
ALTER AUTHORIZATION ON [pbi].[QuarterlyRevenue] TO  SCHEMA OWNER 
GO
/****** Object:  View [pbi].[RentalForCompanies]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE     VIEW [pbi].[RentalForCompanies]
AS
	SELECT P.FullNameI, P.PostalCodeI, P.CityI, P.AddressI, COUNT(1) AS 'RentalNo', SUM(R.TotalPrice) AS 'TotalPrice'
	FROM Person P
	INNER JOIN Rental R ON P.PersonID = R.PersonID
	WHERE P.FullNameI IS NOT NULL
	GROUP BY P.FullNameI, P.PostalCodeI, P.CityI, P.AddressI
GO
ALTER AUTHORIZATION ON [pbi].[RentalForCompanies] TO  SCHEMA OWNER 
GO
/****** Object:  View [dbo].[PerformedLettingPerEmployee]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   VIEW [dbo].[PerformedLettingPerEmployee]
AS
	SELECT P.FullName, W.WpCity, E.JobTitle, E.HireDate, E.Salary,  COUNT(1) AS 'PerformedLetting'
	FROM Rental R
		INNER JOIN Employee E ON R.EmployeeID = E.EmployeeID
		INNER JOIN Workplace W ON W.WorkplaceID = E.WorkplaceID
		INNER JOIN Person P ON P.PersonID = E.PersonID
	GROUP BY P.FullName, W.WpCity, E.JobTitle, E.HireDate, E.Salary
GO
ALTER AUTHORIZATION ON [dbo].[PerformedLettingPerEmployee] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[CarFeature]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CarFeature](
	[FeatureID] [int] IDENTITY(1,1) NOT NULL,
	[FeatureName] [varchar](50) COLLATE Hungarian_100_CI_AS NOT NULL,
	[FeatureIsOptional] [bit] NOT NULL,
 CONSTRAINT [PK_CarFeature_FeatureID] PRIMARY KEY CLUSTERED 
(
	[FeatureID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[CarFeature] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[DictPostalCode]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DictPostalCode](
	[PostalCodeID] [int] IDENTITY(1,1) NOT NULL,
	[PostalCode] [nvarchar](4) COLLATE Hungarian_CI_AS NULL,
	[Studens] [nvarchar](2) COLLATE Hungarian_CI_AS NULL,
	[City] [nvarchar](60) COLLATE Hungarian_CI_AS NULL,
	[CountyID] [smallint] NULL,
	[GPS] [geography] NULL,
 CONSTRAINT [PK_DictPostalCode_PostalCodeID] PRIMARY KEY CLUSTERED 
(
	[PostalCodeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[DictPostalCode] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Reservation]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reservation](
	[ReservationID] [int] IDENTITY(1,1) NOT NULL,
	[ReservationDate] [date] NOT NULL,
	[PlannedRentDate] [date] NOT NULL,
	[PlannedRentEndDate] [date] NOT NULL,
	[PersonID] [int] NOT NULL,
	[EmployeeID] [int] NULL,
	[VehicleID] [int] NOT NULL,
	[ReservationPrice] [int] NOT NULL,
	[IsCanceled] [bit] NOT NULL,
	[CancelDate] [date] NULL,
 CONSTRAINT [PK_Reservation_ReservationID] PRIMARY KEY CLUSTERED 
(
	[ReservationID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Reservation] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Reservation] TO [EmpRole] AS [dbo]
GO
/****** Object:  Table [dbo].[ShiftVehicleFeature]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShiftVehicleFeature](
	[VehicleID] [int] NOT NULL,
	[FeatureID] [int] NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ShiftVehicleFeature] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[ShiftVehicleImage]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ShiftVehicleImage](
	[VehicleID] [int] NOT NULL,
	[ImageID] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[ShiftVehicleImage] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[User]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[UserID] [int] IDENTITY(1,1) NOT NULL,
	[LoginName] [varchar](30) COLLATE Hungarian_100_CI_AS NOT NULL,
	[PasswordHash] [binary](64) NOT NULL,
	[AdminRole] [bit] NOT NULL,
	[UserRole] [bit] NOT NULL,
	[EmpRole] [bit] NOT NULL,
	[RappRole] [bit] NOT NULL,
	[IsActive] [bit] NOT NULL,
	[PersonID] [int] NOT NULL,
	[ModifiedDate] [datetime2](7) NULL,
 CONSTRAINT [PK_User_UserID] PRIMARY KEY CLUSTERED 
(
	[UserID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[User] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[Vehicle]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vehicle](
	[VehicleID] [int] IDENTITY(1,1) NOT NULL,
	[Manufacturer] [varchar](50) COLLATE Hungarian_100_CI_AS NOT NULL,
	[Modell] [varchar](50) COLLATE Hungarian_100_CI_AS NOT NULL,
	[DailyPrice] [int] NOT NULL,
	[ChassisNumber] [varchar](25) COLLATE Hungarian_100_CI_AS NOT NULL,
	[PlateNumber] [varchar](9) COLLATE Hungarian_100_CI_AS NOT NULL,
	[Mileage] [int] NULL,
	[PurchaseDate] [date] NULL,
	[VehicleDetailID] [int] NOT NULL,
	[VehicleTypeID] [int] NOT NULL,
	[WorkplaceID] [int] NOT NULL,
 CONSTRAINT [PK_Vehicle_VehicleID] PRIMARY KEY CLUSTERED 
(
	[VehicleID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[Vehicle] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[Vehicle] TO [EmpRole] AS [dbo]
GO
/****** Object:  Table [dbo].[VehicleDetail]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleDetail](
	[VehicleDetailID] [int] IDENTITY(1,1) NOT NULL,
	[PassengerCapacity] [tinyint] NULL,
	[Door] [tinyint] NULL,
	[Color] [varchar](20) COLLATE Hungarian_100_CI_AS NULL,
	[Transmission] [varchar](20) COLLATE Hungarian_100_CI_AS NULL,
	[Engine] [varchar](100) COLLATE Hungarian_100_CI_AS NULL,
	[FuelType] [varchar](20) COLLATE Hungarian_100_CI_AS NULL,
	[HorsePower] [smallint] NULL,
 CONSTRAINT [PK_VehicleDetail_VehicleDetailID] PRIMARY KEY CLUSTERED 
(
	[VehicleDetailID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[VehicleDetail] TO  SCHEMA OWNER 
GO
GRANT SELECT ON [dbo].[VehicleDetail] TO [EmpRole] AS [dbo]
GO
/****** Object:  Table [dbo].[VehicleImage]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleImage](
	[ImageID] [int] IDENTITY(1,1) NOT NULL,
	[ImageName] [varchar](25) COLLATE Hungarian_100_CI_AS NOT NULL,
	[Picture] [varbinary](max) FILESTREAM  NOT NULL,
	[rowguid] [uniqueidentifier] ROWGUIDCOL  NOT NULL,
 CONSTRAINT [PK_VehicleImage_ImageID] PRIMARY KEY CLUSTERED 
(
	[ImageID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY] FILESTREAM_ON [Image_fg],
 CONSTRAINT [UQ__VehicleI__F73921F72113957B] UNIQUE NONCLUSTERED 
(
	[rowguid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] FILESTREAM_ON [Image_fg]
GO
ALTER AUTHORIZATION ON [dbo].[VehicleImage] TO  SCHEMA OWNER 
GO
/****** Object:  Table [dbo].[VehicleType]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VehicleType](
	[VehicleTypeID] [int] IDENTITY(1,1) NOT NULL,
	[VehicleTypeName] [varchar](50) COLLATE Hungarian_100_CI_AS NULL,
 CONSTRAINT [PK_VehicleType_VehicleTypeID] PRIMARY KEY CLUSTERED 
(
	[VehicleTypeID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER AUTHORIZATION ON [dbo].[VehicleType] TO  SCHEMA OWNER 
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UIX_Person_Email]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UIX_Person_Email] ON [dbo].[Person]
(
	[Email] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UIX_User_LoginName]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UIX_User_LoginName] ON [dbo].[User]
(
	[LoginName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UIX_Vehicle_ChassisNumber]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UIX_Vehicle_ChassisNumber] ON [dbo].[Vehicle]
(
	[ChassisNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UIX_Vehicle_PlateNumber]    Script Date: 2021. 08. 15. 21:38:39 ******/
CREATE UNIQUE NONCLUSTERED INDEX [UIX_Vehicle_PlateNumber] ON [dbo].[Vehicle]
(
	[PlateNumber] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = ON, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CarFeature] ADD  CONSTRAINT [df_FeatureIsOptional]  DEFAULT ((0)) FOR [FeatureIsOptional]
GO
ALTER TABLE [dbo].[Reservation] ADD  CONSTRAINT [df_ReservationPrice]  DEFAULT ((8000)) FOR [ReservationPrice]
GO
ALTER TABLE [dbo].[Reservation] ADD  CONSTRAINT [df_IsCanceled]  DEFAULT ((0)) FOR [IsCanceled]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [df_AdminRole]  DEFAULT ((0)) FOR [AdminRole]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [df_UserRole]  DEFAULT ((1)) FOR [UserRole]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [df_EmpRole]  DEFAULT ((0)) FOR [EmpRole]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [df_RappRole]  DEFAULT ((0)) FOR [RappRole]
GO
ALTER TABLE [dbo].[User] ADD  CONSTRAINT [df_IsActive]  DEFAULT ((1)) FOR [IsActive]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_PersonID_Person_PersonID] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_PersonID_Person_PersonID]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_WorkplaceID_Workplace_WorkplaceID] FOREIGN KEY([WorkplaceID])
REFERENCES [dbo].[Workplace] ([WorkplaceID])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_WorkplaceID_Workplace_WorkplaceID]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_EmployeeID_Employee_EmployeeID] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_EmployeeID_Employee_EmployeeID]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_PersonID_Person_PersonID] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_PersonID_Person_PersonID]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_ReservationID_Reservation_ReservationID] FOREIGN KEY([ReservationID])
REFERENCES [dbo].[Reservation] ([ReservationID])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_ReservationID_Reservation_ReservationID]
GO
ALTER TABLE [dbo].[Rental]  WITH CHECK ADD  CONSTRAINT [FK_Rental_VehicleID_Vehicle_VehicleID] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicle] ([VehicleID])
GO
ALTER TABLE [dbo].[Rental] CHECK CONSTRAINT [FK_Rental_VehicleID_Vehicle_VehicleID]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_EmployeeID_Employee_EmployeeID] FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([EmployeeID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_EmployeeID_Employee_EmployeeID]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_PersonID_Person_PersonID] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_PersonID_Person_PersonID]
GO
ALTER TABLE [dbo].[Reservation]  WITH CHECK ADD  CONSTRAINT [FK_Reservation_VehicleID_Vehicle_VehicleID] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicle] ([VehicleID])
GO
ALTER TABLE [dbo].[Reservation] CHECK CONSTRAINT [FK_Reservation_VehicleID_Vehicle_VehicleID]
GO
ALTER TABLE [dbo].[ShiftVehicleFeature]  WITH CHECK ADD  CONSTRAINT [FK_ShiftVehicleFeature_FeatureID_CarFeature_FeatureID] FOREIGN KEY([FeatureID])
REFERENCES [dbo].[CarFeature] ([FeatureID])
GO
ALTER TABLE [dbo].[ShiftVehicleFeature] CHECK CONSTRAINT [FK_ShiftVehicleFeature_FeatureID_CarFeature_FeatureID]
GO
ALTER TABLE [dbo].[ShiftVehicleFeature]  WITH CHECK ADD  CONSTRAINT [FK_ShiftVehicleFeature_VehicleID] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicle] ([VehicleID])
GO
ALTER TABLE [dbo].[ShiftVehicleFeature] CHECK CONSTRAINT [FK_ShiftVehicleFeature_VehicleID]
GO
ALTER TABLE [dbo].[ShiftVehicleImage]  WITH CHECK ADD  CONSTRAINT [FK_ShiftVehicleImage_ImageID_VehicleImage_ImageID] FOREIGN KEY([ImageID])
REFERENCES [dbo].[VehicleImage] ([ImageID])
GO
ALTER TABLE [dbo].[ShiftVehicleImage] CHECK CONSTRAINT [FK_ShiftVehicleImage_ImageID_VehicleImage_ImageID]
GO
ALTER TABLE [dbo].[ShiftVehicleImage]  WITH CHECK ADD  CONSTRAINT [FK_ShiftVehicleImage_VehicleID_Vehicle_VehicleID] FOREIGN KEY([VehicleID])
REFERENCES [dbo].[Vehicle] ([VehicleID])
GO
ALTER TABLE [dbo].[ShiftVehicleImage] CHECK CONSTRAINT [FK_ShiftVehicleImage_VehicleID_Vehicle_VehicleID]
GO
ALTER TABLE [dbo].[User]  WITH CHECK ADD  CONSTRAINT [FK_User_PersonID_Person_PersonID] FOREIGN KEY([PersonID])
REFERENCES [dbo].[Person] ([PersonID])
GO
ALTER TABLE [dbo].[User] CHECK CONSTRAINT [FK_User_PersonID_Person_PersonID]
GO
ALTER TABLE [dbo].[Vehicle]  WITH NOCHECK ADD  CONSTRAINT [FK_Vehicle_VehicleDetailID_VehicleDetail_VehicleDetailID] FOREIGN KEY([VehicleDetailID])
REFERENCES [dbo].[VehicleDetail] ([VehicleDetailID])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_VehicleDetailID_VehicleDetail_VehicleDetailID]
GO
ALTER TABLE [dbo].[Vehicle]  WITH NOCHECK ADD  CONSTRAINT [FK_Vehicle_VehicleTypeID_VehicleType_VehicleTypeID] FOREIGN KEY([VehicleTypeID])
REFERENCES [dbo].[VehicleType] ([VehicleTypeID])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_VehicleTypeID_VehicleType_VehicleTypeID]
GO
ALTER TABLE [dbo].[Vehicle]  WITH NOCHECK ADD  CONSTRAINT [FK_Vehicle_WorkplaceID_Workplace_WorkplaceID] FOREIGN KEY([WorkplaceID])
REFERENCES [dbo].[Workplace] ([WorkplaceID])
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [FK_Vehicle_WorkplaceID_Workplace_WorkplaceID]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [Check_Salary] CHECK  (([Salary]>(0)))
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [Check_Salary]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [Check_Email] CHECK  (([Email] like '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%'))
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [Check_Email]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [Check_Gender] CHECK  (([Gender]=(2) OR [Gender]=(1)))
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [Check_Gender]
GO
ALTER TABLE [dbo].[Vehicle]  WITH NOCHECK ADD  CONSTRAINT [Check_ChassisNumber] CHECK  ((len([ChassisNumber])=(17)))
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [Check_ChassisNumber]
GO
ALTER TABLE [dbo].[Vehicle]  WITH NOCHECK ADD  CONSTRAINT [Check_DailyPrice] CHECK  (([DailyPrice]>(0)))
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [Check_DailyPrice]
GO
ALTER TABLE [dbo].[Vehicle]  WITH CHECK ADD  CONSTRAINT [Check_PlateNumber] CHECK  (([PlateNumber] like '%[A-Z]%[-]%[0-9]%'))
GO
ALTER TABLE [dbo].[Vehicle] CHECK CONSTRAINT [Check_PlateNumber]
GO
ALTER TABLE [dbo].[Workplace]  WITH CHECK ADD  CONSTRAINT [Check_EmailWp] CHECK  (([WpEmail] like '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%'))
GO
ALTER TABLE [dbo].[Workplace] CHECK CONSTRAINT [Check_EmailWp]
GO
/****** Object:  StoredProcedure [dbo].[CreateDictTableFromHunSpatialDB]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[CreateDictTableFromHunSpatialDB]
AS
	SET NOCOUNT ON
	SELECT *
		INTO CarRental.dbo.DictCounty
	FROM HunSpatial.dbo.County

	SELECT *
		INTO CarRental.dbo.DictPostalCode
	FROM HunSpatial.dbo.PostalCode

	ALTER TABLE DictPostalCode
	ADD CONSTRAINT PK_DictPostalCode_PostalCodeID PRIMARY KEY (PostalCodeID)

	ALTER TABLE DictCounty
	ADD CONSTRAINT PK_DictCounty_ID PRIMARY KEY (ID)

GO
ALTER AUTHORIZATION ON [dbo].[CreateDictTableFromHunSpatialDB] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[CreateEmailForPerson]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[CreateEmailForPerson]
AS
	SET NOCOUNT ON
	;WITH Random
	AS
	(
	SELECT 
		  p1.PersonID,
		  p1.[FirstName],
		  p1.[LastName],
		  p1.BirthDate,
		  CAST(RAND(CHECKSUM(NEWID()))*5 as int) randomemail
	  FROM [dbo].Person p1
	)
	UPDATE Person
	SET Email = R.email
	FROM (
			SELECT PersonID,
			email=
			CASE
				when randomemail = 0 then 
				lower(left(FirstName,3)+[LastName])+(CAST(YEAR(BirthDate) as varchar))+'@hotmail.com'
				when randomemail = 1 then 
				lower(left(FirstName,3)+[LastName])+(CAST(YEAR(BirthDate) as varchar))+'@gmail.com'
				when randomemail = 2 then 
				lower(left(FirstName,3)+[LastName])+(CAST(YEAR(BirthDate) as varchar))+'@freemail.hu'
				when randomemail = 3 then 
				lower(left(FirstName,3)+[LastName])+(CAST(YEAR(BirthDate) as varchar))+'@outlook.com'
				else
				lower(left(FirstName,3)+[LastName])+(CAST(YEAR(BirthDate) as varchar))+'@yahoo.com'
			END
			FROM Random) R
	INNER JOIN 
	Person P ON P.PersonID = R.PersonID

	Update Person SET Email = REPLACE(Email,'á','a')
	Update Person SET Email = REPLACE(Email,'é','e')
	Update Person SET Email = REPLACE(Email,'í','i')
	Update Person SET Email = REPLACE(Email,'ó','o')
	Update Person SET Email = REPLACE(Email,'ö','o')
	Update Person SET Email = REPLACE(Email,'ő','o')
	Update Person SET Email = REPLACE(Email,'ú','u')
	Update Person SET Email = REPLACE(Email,'ü','u')
	Update Person SET Email = REPLACE(Email,'ű','u')
GO
ALTER AUTHORIZATION ON [dbo].[CreateEmailForPerson] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[CreatePhoneForPerson]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[CreatePhoneForPerson]
AS
	SET NOCOUNT ON
	;WITH Random
	AS
	(
	SELECT 
		  p1.PersonID,
		  CAST(RAND(CHECKSUM(NEWID()))*3 as int) randomphone
	  FROM [dbo].Person p1
	)
	UPDATE Person
	SET Phone = R.Phone
	FROM (
			SELECT PersonID,
			Phone =
			CASE
				when randomphone = 0 then 
				'+3620'+SUBSTRING(CAST(ABS(CHECKSUM(NEWID())) as varchar),1,7)
				when randomphone = 1 then 
				'+3630'+SUBSTRING(CAST(ABS(CHECKSUM(NEWID())) as varchar),1,7)
				else
				'+3670'+SUBSTRING(CAST(ABS(CHECKSUM(NEWID())) as varchar),1,7)
			END
			FROM Random) R
	INNER JOIN 
	Person P ON P.PersonID = R.PersonID
GO
ALTER AUTHORIZATION ON [dbo].[CreatePhoneForPerson] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[CreateUsersRandom]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[CreateUsersRandom]
AS
SET NOCOUNT ON
INSERT INTO [User] (LoginName, PasswordHash, PersonID)
			SELECT LOWER(SUBSTRING(FirstName,1,3)+LastName)+CAST(FLOOR((RAND(CHECKSUM(NEWID())))*1000) as varchar)
			, CONVERT(varbinary(64), CRYPT_GEN_RANDOM(64))
			, PersonID
			FROM Person
	
	UPDATE [User]
	SET EmpRole = 1,
		UserRole = 0
	WHERE PersonID IN (SELECT PersonID FROM Employee) 

	UPDATE [User] SET LoginName = REPLACE(LoginName,'á','a')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'é','e')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'í','i')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'ó','o')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'ö','o')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'ő','o')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'ú','u')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'ü','u')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'ű','u')
GO
ALTER AUTHORIZATION ON [dbo].[CreateUsersRandom] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[FillPersonTableRandom]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[FillPersonTableRandom]
	@Count int
AS
	SET NOCOUNT ON
	DROP TABLE IF EXISTS #LN
	CREATE TABLE #LN (LastName varchar(30))
	BULK INSERT #LN 
		FROM '\\DESKTOP-SR0EERQ\C$\Training360 anyagok\_Adatbázis üzemeltető\Vizsgaremek\Adatfájlok\Családnevek.txt' 
		WITH(CODEPAGE = '65001')  
	
	UPDATE #LN SET LastName = LEFT(LastName,1) + LOWER(SUBSTRING(LastName, 2, 100))

	--Női keresztnevek és gender beállítás
	DROP TABLE IF EXISTS #FNF
	CREATE TABLE #FNF (FirstName varchar(30))
	BULK INSERT #FNF
		FROM '\\DESKTOP-SR0EERQ\C$\Training360 anyagok\_Adatbázis üzemeltető\Vizsgaremek\Adatfájlok\osszesnoi.txt' 
		WITH(CODEPAGE = '65001'
		   , ROWTERMINATOR = '0x0A')  

	ALTER TABLE #FNF ADD Gender tinyint NOT NULL DEFAULT 1

	-- Férfi keresztnevek és gender beállítás
	CREATE TABLE #FNM (FirstName varchar(30))
	BULK INSERT #FNM
		FROM '\\DESKTOP-SR0EERQ\C$\\Training360 anyagok\_Adatbázis üzemeltető\Vizsgaremek\Adatfájlok\osszesffi.txt' 
		WITH(CODEPAGE = '65001'
		, ROWTERMINATOR = '0x0A')  

	ALTER TABLE #FNM ADD Gender tinyint NOT NULL DEFAULT 2

	--#AllFN táblába az összes keresztnév betöltése és egy láthatatlan karakter törlése a végéről (nem space, TRIM nem működött)
	SELECT * 
	INTO #AllFN
	FROM
	(SELECT SUBSTRING(FirstName, 1, LEN(FirstName)-1) AS FirstName, Gender FROM #FNF
		UNION
		SELECT SUBSTRING(FirstName, 1, LEN(FirstName)-1) AS FirstName, Gender FROM #FNM) X

	-- 3000 személynév előállítása a családnevek és a keresztnevek alapján
	DROP TABLE IF EXISTS #LF
	SELECT ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) PersonID, LastName, FirstName, Gender
		INTO #LF
		FROM 
			(SELECT TOP (@Count) LastName, FirstName, Gender
			FROM #LN
			CROSS APPLY #AllFN
			ORDER BY NEWID() 
			) X

	--Utcanevek betöltése és csak a különbözőek megtartása
	DROP TABLE IF EXISTS #Street
	DROP TABLE IF EXISTS #TempStreet
	CREATE TABLE #TempStreet (Street varchar(50))
	BULK INSERT #TempStreet
		FROM '\\DESKTOP-SR0EERQ\C$\\Training360 anyagok\_Adatbázis üzemeltető\Vizsgaremek\Adatfájlok\utcanevek.txt' 
		WITH(CODEPAGE = '65001'
		, ROWTERMINATOR = '0x0A')  

	--Különböző utcanevek levállogatása
	SELECT * INTO #Street 
		FROM (SELECT DISTINCT Street FROM #TempStreet) X
	DROP TABLE #TempStreet

	--Bemeneti adat néhány sorában lévő felesleges szóköz eltávolítása
	--UPDATE #Street 
	--SET Street = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(Street,CHAR(32),'()'),')(',''),'()',CHAR(32))))

	--Címek generálása random a DictPostalCode tábla, az utcanevek és véletlenszerű házszámok alapján
	DROP TABLE IF EXISTS #A
	SELECT ROW_NUMBER() OVER(ORDER BY(SELECT NULL)) PersonID, PostalCode, City, CONCAT(Street,FLOOR(((ABS(CHECKSUM(NEWID())) % 100001) 
			+ ((ABS(CHECKSUM(NEWID())) % 100001) * 00000.1) )/ 1100)) AS Street
		INTO #A
		FROM (SELECT TOP (@Count) PostalCode, City, Street
				FROM #Street
				CROSS APPLY DictPostalCode
				ORDER BY NEWID() ) X

	--Person tábla feltöltése
	SET IDENTITY_INSERT Person ON
	INSERT Person (PersonID, LastName, FirstName, FullName, Gender, PostalCode, City, Address, BirthDate)
	SELECT #LF.PersonID, #LF.LastName, #LF.FirstName, #LF.LastName+' '+#LF.FirstName, #LF.Gender, #A.PostalCode, #A.City, #A.Street,
		DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 19001), '1950-01-01')
	FROM #A
	INNER JOIN #LF ON #LF.PersonID = #A.PersonID
	SET IDENTITY_INSERT Person OFF

GO
ALTER AUTHORIZATION ON [dbo].[FillPersonTableRandom] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[FillRentalFromReservation]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[FillRentalFromReservation]
AS
	INSERT Rental
	SELECT PlannedRentDate, PlannedRentEndDate, PersonID, EmployeeID, R.VehicleID, ReservationID
		, DATEDIFF(d, R.PlannedRentDate, R.PlannedRentEndDate) * V.DailyPrice
	FROM Reservation R INNER JOIN Vehicle V ON R.VehicleID = V.VehicleID
	WHERE IsCanceled = 0
GO
ALTER AUTHORIZATION ON [dbo].[FillRentalFromReservation] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[FillShiftVehicleFeature]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[FillShiftVehicleFeature]
AS
	INSERT INTO ShiftVehicleFeature (VehicleID, FeatureID)
	SELECT TOP 1000 VehicleID, FeatureID FROM Vehicle V
	CROSS JOIN CarFeature
	ORDER BY NEWID()
GO
ALTER AUTHORIZATION ON [dbo].[FillShiftVehicleFeature] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[procAllIndexRebuild]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [dbo].[procAllIndexRebuild]
AS
	DECLARE curTable CURSOR FOR SELECT name FROM sys.tables
	DECLARE @name varchar(200), @S varchar(1000)
	OPEN curTable
	FETCH NEXT FROM curTable INTO @name
	WHILE @@FETCH_STATUS = 0
		BEGIN
			SET @S = 'ALTER INDEX ALL ON ' +'['+ @name +']' + ' REBUILD'
			EXEC (@S)
			FETCH NEXT FROM curTable INTO @name
		END
	CLOSE curTable
	DEALLOCATE curTable
GO
ALTER AUTHORIZATION ON [dbo].[procAllIndexRebuild] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[procDeletePersonalData]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[procDeletePersonalData]
AS
BEGIN
	SET NOCOUNT ON
	UPDATE Person 
		SET FirstName = NULL,
			LastName = NULL,
			FullName = NULL,
			Address = NULL,
			Phone = NULL,
			Email = NULL,
			BirthDate = NULL
	FROM Person P INNER JOIN [User] U ON P.PersonID = U.PersonID
	WHERE IsActive = 0 AND DATEDIFF(DAY, U.ModifiedDate, SYSDATETIME()) > 1826
	RETURN 0
END 
GO
ALTER AUTHORIZATION ON [dbo].[procDeletePersonalData] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [dbo].[UpdateCanceledReservationRandom]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [dbo].[UpdateCanceledReservationRandom]
AS
	UPDATE Reservation 
	SET IsCanceled = 1,
		CancelDate = DATEADD(DAY, ABS(CHECKSUM(NEWID()) % DATEDIFF(day, ReservationDate, PlannedRentDate)) + 1, ReservationDate)
	WHERE Reservation.ReservationID IN
	(
		SELECT TOP 5 PERCENT ReservationID FROM Reservation
		ORDER BY NEWID()
	)

GO
ALTER AUTHORIZATION ON [dbo].[UpdateCanceledReservationRandom] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [Emp].[InsertRentalFromReservation]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [Emp].[InsertRentalFromReservation](@ReservationID int = NULL)
AS
BEGIN
	IF @ReservationID IS NULL
		RETURN -1
	ELSE IF @ReservationID IN (SELECT ReservationID FROM Rental)
		RETURN -2
	ELSE
	BEGIN
		INSERT INTO Rental(RentalDate, RentalEndDate, PersonID, EmployeeID, VehicleID, ReservationID)
		SELECT PlannedRentDate, PlannedRentEndDate, PersonID, EmployeeID, VehicleID, @ReservationID FROM Reservation
		WHERE ReservationID = @ReservationID
	RETURN 0
	END
END
GO
ALTER AUTHORIZATION ON [Emp].[InsertRentalFromReservation] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [Emp].[procAddNewRental]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [Emp].[procAddNewRental]
	@RentalDate date,
	@RentalEndDate date,
	@PersonID int,
	@EmployeeID int,
	@VehicleID int,
	@Msg varchar(MAX)=null OUTPUT
AS
BEGIN TRY
	SET NOCOUNT ON
	INSERT INTO Rental(RentalDate, RentalEndDate, PersonID, EmployeeID,VehicleID)
	VALUES (@RentalDate, @RentalEndDate, @PersonID, @EmployeeID, @VehicleID)
	SET @Msg = 'Insert is successfully.'
END TRY

BEGIN CATCH
	SET @Msg = ERROR_MESSAGE()
END CATCH
GO
ALTER AUTHORIZATION ON [Emp].[procAddNewRental] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [Emp].[procAddNewRental] TO [EmpRole] AS [dbo]
GO
GRANT EXECUTE ON [Emp].[procAddNewRental] TO [RentalWebApp] AS [dbo]
GO
/****** Object:  StoredProcedure [Emp].[procAddNewReservation]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [Emp].[procAddNewReservation]
	@PlannedRentDate date = NULL,
	@PlannedRentEndDate date = NULL,
	@PersonID int = NULL,
	@EmployeeID int = NULL,
	@VehicleID int = NULL
AS
BEGIN 	
	SET NOCOUNT ON
	IF(@PlannedRentDate IS NULL OR @PlannedRentEndDate IS NULL OR @PersonID IS NULL OR @EmployeeID IS NULL OR @VehicleID IS NULL)
		RETURN -1
	ELSE IF(@PlannedRentEndDate < @PlannedRentDate)
		RETURN -2
	ELSE IF(@PlannedRentDate < SYSDATETIME())
		RETURN -3
	ELSE IF	(SELECT COUNT(1) FROM Reservation R 
				WHERE (@PlannedRentDate >= R.PlannedRentDate AND @PlannedRentDate <= R.PlannedRentEndDate 
				OR @PlannedRentEndDate >= R.PlannedRentDate AND @PlannedRentEndDate <= R.PlannedRentEndDate 
				OR R.PlannedRentDate >= @PlannedRentDate AND R.PlannedRentDate <= @PlannedRentEndDate 
				OR R.PlannedRentEndDate >= @PlannedRentDate AND R.PlannedRentEndDate <= @PlannedRentEndDate) 
				AND R.VehicleID = @VehicleID 
			)  > 0
		RETURN -4
	ELSE
		BEGIN
			INSERT INTO Reservation(ReservationDate, PlannedRentDate,PlannedRentEndDate, PersonID, EmployeeID,VehicleID)
			VALUES (SYSDATETIME(), @PlannedRentDate, @PlannedRentEndDate, @PersonID, @EmployeeID, @VehicleID)
			RETURN 0	
		END
END 
GO
ALTER AUTHORIZATION ON [Emp].[procAddNewReservation] TO  SCHEMA OWNER 
GO
GRANT EXECUTE ON [Emp].[procAddNewReservation] TO [EmpRole] AS [dbo]
GO
GRANT EXECUTE ON [Emp].[procAddNewReservation] TO [RentalWebApp] AS [dbo]
GO
/****** Object:  StoredProcedure [Emp].[procInsertRentalFromReservation]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROC [Emp].[procInsertRentalFromReservation](@ReservationID int = NULL)
AS
BEGIN
	IF @ReservationID IS NULL
		RETURN -1
	ELSE IF @ReservationID IN (SELECT ReservationID FROM Rental WHERE ReservationID = @ReservationID)
		RETURN -2
	ELSE
	BEGIN
		INSERT INTO Rental(RentalDate, RentalEndDate, PersonID, EmployeeID, VehicleID, ReservationID)
		SELECT PlannedRentDate, PlannedRentEndDate, PersonID, EmployeeID, VehicleID, @ReservationID FROM Reservation
		WHERE ReservationID = @ReservationID
	RETURN 0
	END
END
GO
ALTER AUTHORIZATION ON [Emp].[procInsertRentalFromReservation] TO  SCHEMA OWNER 
GO
/****** Object:  StoredProcedure [Rapp].[procCheckVIN]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   PROCEDURE [Rapp].[procCheckVIN] (@VIN AS varchar(17) = NULL)
AS
	BEGIN
		SET NOCOUNT ON
		IF @VIN IS NULL
			RETURN -1
		IF(LEN(@VIN) <> 17) 
			RETURN -2

		DECLARE @Transliteration table(
			ID int IDENTITY(1,1) not null,
			TKey char,
			TValue smallint
		)
		INSERT INTO @Transliteration VALUES('a', 1)
		INSERT INTO @Transliteration VALUES('b', 2)
		INSERT INTO @Transliteration VALUES('c', 3)
		INSERT INTO @Transliteration VALUES('d', 4)
		INSERT INTO @Transliteration VALUES('e', 5)
		INSERT INTO @Transliteration VALUES('f', 6)
		INSERT INTO @Transliteration VALUES('g', 7)
		INSERT INTO @Transliteration VALUES('h', 8)
		INSERT INTO @Transliteration VALUES('j', 1)
		INSERT INTO @Transliteration VALUES('k', 2)
		INSERT INTO @Transliteration VALUES('l', 3)
		INSERT INTO @Transliteration VALUES('m', 4)
		INSERT INTO @Transliteration VALUES('n', 5)
		INSERT INTO @Transliteration VALUES('p', 7)
		INSERT INTO @Transliteration VALUES('r', 9)
		INSERT INTO @Transliteration VALUES('s', 2)
		INSERT INTO @Transliteration VALUES('t', 3)
		INSERT INTO @Transliteration VALUES('u', 4)
		INSERT INTO @Transliteration VALUES('v', 5)
		INSERT INTO @Transliteration VALUES('w', 6)
		INSERT INTO @Transliteration VALUES('x', 7)
		INSERT INTO @Transliteration VALUES('y', 8)
		INSERT INTO @Transliteration VALUES('z', 9)
	
		DECLARE @Weight table (
			Position int IDENTITY(1,1) NOT NULL,
			PositionWeight smallint
		)
		INSERT INTO @Weight VALUES(8)
		INSERT INTO @Weight VALUES(7)
		INSERT INTO @Weight VALUES(6)
		INSERT INTO @Weight VALUES(5)
		INSERT INTO @Weight VALUES(4)
		INSERT INTO @Weight VALUES(3)
		INSERT INTO @Weight VALUES(2)
		INSERT INTO @Weight VALUES(10)
		INSERT INTO @Weight VALUES(0)
		INSERT INTO @Weight VALUES(9)
		INSERT INTO @Weight VALUES(8)
		INSERT INTO @Weight VALUES(7)
		INSERT INTO @Weight VALUES(6)
		INSERT INTO @Weight VALUES(5)
		INSERT INTO @Weight VALUES(4)
		INSERT INTO @Weight VALUES(3)
		INSERT INTO @Weight VALUES(2)
	
		DECLARE @Cnt tinyint = 1
		DECLARE @CheckSUM smallint = 0
		DECLARE @CheckDigit tinyint = 0
		SET @VIN = LOWER(@VIN)
		DECLARE @ModifiedVIN AS varchar(17) = @VIN

		WHILE @Cnt <= 17
			BEGIN
				IF(SUBSTRING(@VIN, @Cnt, 1) IN ('i', 'o', 'q'))
				BEGIN 
					RETURN -3
				END
				SET @CheckSUM += 
					CASE 
						WHEN TRY_PARSE(SUBSTRING(@VIN, @Cnt, 1) AS int) IS NOT NULL --TRUE: az adott karakter numerikus; FALSE: az adott karakter betű
							THEN PARSE(SUBSTRING(@VIN, @Cnt, 1) AS int) * (SELECT PositionWeight 
								FROM @Weight WHERE Position = @Cnt)
							ELSE (SELECT TValue FROM @Transliteration WHERE TKey LIKE SUBSTRING(@VIN, @Cnt, 1)) 
								* (SELECT PositionWeight FROM @Weight WHERE Position = @Cnt)
					END
				SET @Cnt+=1
			END
		SET @CheckDigit = @CheckSUM % 11
		IF(@CheckDigit = 10)
			BEGIN 
				SET @ModifiedVIN = STUFF(@ModifiedVIN, 9, 1, 'x')
			END
		ELSE 
			BEGIN 
				SET @ModifiedVIN = STUFF(@ModifiedVIN, 9, 1, @CheckDigit)
			END

		IF (@ModifiedVIN LIKE @VIN)
			BEGIN
				RETURN 0
			END
		ELSE
			BEGIN
				RETURN -4
			END
	END
GO
ALTER AUTHORIZATION ON [Rapp].[procCheckVIN] TO  SCHEMA OWNER 
GO
/****** Object:  Trigger [dbo].[trg_AI_CalcTotalPrice]    Script Date: 2021. 08. 15. 21:38:39 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   TRIGGER [dbo].[trg_AI_CalcTotalPrice]
	ON [dbo].[Rental]
	AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON
		DECLARE @DailyPrice money
		DECLARE @Day int
		SELECT @DailyPrice = DailyPrice FROM dbo.Vehicle V INNER JOIN inserted I ON V.VehicleID = I.VehicleID WHERE V.VehicleID = I.VehicleID
		SELECT @Day = DATEDIFF(d, inserted.RentalDate, inserted.RentalEndDate) FROM inserted
		UPDATE Rental
			SET TotalPrice = @DailyPrice * @Day
			FROM Rental R 
			INNER JOIN inserted I ON R.VehicleID = I.VehicleID
			WHERE R.VehicleID = I.VehicleID AND R.RentalID = I.RentalID
END
GO
ALTER TABLE [dbo].[Rental] ENABLE TRIGGER [trg_AI_CalcTotalPrice]
GO
/****** Object:  Trigger [dbo].[trg_IoD_InsteadDeleteUser]    Script Date: 2021. 08. 15. 21:38:40 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE   TRIGGER [dbo].[trg_IoD_InsteadDeleteUser]
	ON [dbo].[User]
	INSTEAD OF DELETE
AS
BEGIN
	SET NOCOUNT ON
	UPDATE [User] 
		SET IsActive = 0,
			EmpRole = 0,
			AdminRole = 0,
			RappRole = 0,
			UserRole = 0,
			ModifiedDate = SYSDATETIME()
		FROM [User] U INNER JOIN deleted D ON U.UserID = D.UserID
		WHERE U.UserID = D.UserID
END
GO
ALTER TABLE [dbo].[User] ENABLE TRIGGER [trg_IoD_InsteadDeleteUser]
GO
