CREATE OR ALTER   VIEW [pbi].[RentalForCompanies]
AS
	SELECT P.FullNameI, P.PostalCodeI, P.CityI, P.AddressI, COUNT(1) AS 'RentalNo', SUM(R.TotalPrice) AS 'TotalPrice'
	FROM Person P
	INNER JOIN Rental R ON P.PersonID = R.PersonID
	WHERE P.FullNameI IS NOT NULL
	GROUP BY P.FullNameI, P.PostalCodeI, P.CityI, P.AddressI
GO


