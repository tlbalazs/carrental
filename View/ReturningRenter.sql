CREATE OR ALTER VIEW [dbo].[ReturningRenter]
AS
	SELECT P.FullName, P.PostalCode, P.City, P.Address, P.Email, COUNT(1) AS 'RentalCount'
	FROM Person P 
		INNER JOIN Rental R ON P.PersonID = R.PersonID
	GROUP BY P.FullName, P.PostalCode, P.City, P.Address, P.Email 
	HAVING COUNT(1) > 8
GO


