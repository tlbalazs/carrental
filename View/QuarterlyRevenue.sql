CREATE OR ALTER VIEW [pbi].[QuarterlyRevenue]
AS
	SELECT YEAR(RentalDate) AS 'Year', DATEPART(Q, RentalDate) AS 'Quarter', W.WpCity, SUM(TotalPrice) AS 'TotalPrice' FROM Rental R
		INNER JOIN Employee E ON R.EmployeeID = E.EmployeeID
		INNER JOIN Workplace W ON W.WorkplaceID = E.WorkplaceID
	GROUP BY YEAR(RentalDate) , DATEPART(Q, RentalDate), W.WpCity
GO


