
USE [CarRental]
GO
CREATE APPLICATION ROLE [RentalWebApp] WITH DEFAULT_SCHEMA = [dbo], PASSWORD = N'Pa55w.rd'
GO
use [CarRental]
GO
GRANT EXECUTE ON SCHEMA::[Rapp] TO [RentalWebApp]
GO
use [CarRental]
GO
GRANT EXECUTE ON [Emp].[procAddNewReservation] TO [RentalWebApp]
GO
use [CarRental]
GO
GRANT EXECUTE ON [Emp].[procAddNewRental] TO [RentalWebApp]
GO