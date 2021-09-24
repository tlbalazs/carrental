CREATE OR ALTER VIEW [dbo].[PerformedLettingPerEmployee]
AS
	SELECT P.FullName, W.WpCity, E.JobTitle, E.HireDate, E.Salary,  COUNT(1) AS 'PerformedLetting'
	FROM Rental R
		INNER JOIN Employee E ON R.EmployeeID = E.EmployeeID
		INNER JOIN Workplace W ON W.WorkplaceID = E.WorkplaceID
		INNER JOIN Person P ON P.PersonID = E.PersonID
	GROUP BY P.FullName, W.WpCity, E.JobTitle, E.HireDate, E.Salary
GO


