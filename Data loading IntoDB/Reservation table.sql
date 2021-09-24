--Reservation tábla feltöltése
--Dátum generálás random 2013-01-01 + 7 év
DROP TABLE IF EXISTS #T
CREATE TABLE #T (ResDate date, StartDate date, EndDate date, PersonID int, VehicleID int, EmployeeID int)

--WorkplaceID = 1
SET NOCOUNT ON
DECLARE @ResDate as smalldatetime
DECLARE @StartDate as smalldatetime
DECLARE @EndDate as smalldatetime

SELECT @ResDate = DATEADD(DAY, FLOOR(RAND()*2555+1), '2013-01-01') 
SELECT @StartDate = DATEADD(DAY, FLOOR(RAND()*12+1), @ResDate)
SELECT @EndDate = DATEADD(DAY, FLOOR(RAND()*8+1), @StartDate)

INSERT INTO #T
SELECT  @ResDate, @StartDate, @EndDate, P.PersonID, V.VehicleID, E.EmployeeID
FROM (SELECT TOP 1 Person.PersonID FROM Person ORDER BY NEWID()) P
CROSS APPLY
	(SELECT TOP 1 VehicleID, WorkplaceID FROM Vehicle WHERE WorkplaceID = 1 ORDER BY NEWID()) V
CROSS APPLY
	(SELECT TOP 1 EmployeeID, WorkplaceID FROM Employee WHERE WorkplaceID = 1 ORDER BY NEWID()) E
WHERE V.WorkplaceID = E.WorkplaceID
GO 11000

--WorkplaceID = 2
SET NOCOUNT ON
DECLARE @ResDate as smalldatetime
DECLARE @StartDate as smalldatetime
DECLARE @EndDate as smalldatetime

SELECT @ResDate = DATEADD(DAY, FLOOR(RAND()*2555+1), '2013-01-01') 
SELECT @StartDate = DATEADD(DAY, FLOOR(RAND()*12+1), @ResDate)
SELECT @EndDate = DATEADD(DAY, FLOOR(RAND()*8+1), @StartDate)

INSERT INTO #T
SELECT  @ResDate, @StartDate, @EndDate, P.PersonID, V.VehicleID, E.EmployeeID
FROM (select top 1 Person.PersonID from Person order by NEWID()) P
CROSS APPLY
(select top 1 VehicleID, WorkplaceID from Vehicle WHERE WorkplaceID = 2 order by NEWID()) V
CROSS APPLY
(select top 1 EmployeeID, WorkplaceID from Employee WHERE WorkplaceID = 2 order by NEWID()) E
WHERE V.WorkplaceID = E.WorkplaceID
GO 15000

--WorkplaceID = 3
SET NOCOUNT ON
DECLARE @ResDate as smalldatetime
DECLARE @StartDate as smalldatetime
DECLARE @EndDate as smalldatetime

SELECT @ResDate = DATEADD(DAY, FLOOR(RAND()*2555+1), '2013-01-01') 
SELECT @StartDate = DATEADD(DAY, FLOOR(RAND()*12+1), @ResDate)
SELECT @EndDate = DATEADD(DAY, FLOOR(RAND()*8+1), @StartDate)

INSERT INTO #T
SELECT  @ResDate, @StartDate, @EndDate, P.PersonID, V.VehicleID, E.EmployeeID
FROM (select top 1 Person.PersonID from Person order by NEWID()) P
CROSS APPLY
(select top 1 VehicleID, WorkplaceID from Vehicle WHERE WorkplaceID = 3 order by NEWID()) V
CROSS APPLY
(select top 1 EmployeeID, WorkplaceID from Employee WHERE WorkplaceID = 3 order by NEWID()) E
WHERE V.WorkplaceID = E.WorkplaceID
GO 12000

--Az összes generált foglalás kilistázása
SELECT ROW_NUMBER() OVER(ORDER BY T.VehicleID DESC) AS RowNum, T.VehicleID, ResDate, StartDate, EndDate 
FROM #T T
INNER JOIN Vehicle V ON V.VehicleID = T.VehicleID 
ORDER BY VehicleID, resdate, StartDate
GO

--Autó foglalásánál, ahol a dátumban átfedés van -> törlés
;WITH DelDateOverlap
AS
(
	SELECT T1.ResDate, T1.StartDate,T1.EndDate, T1.PersonID, T1.VehicleID, T1.EmployeeID FROM #T T1
	INNER JOIN #T T2 ON (T2.StartDate > T1.StartDate AND T2.StartDate < T1.EndDate 
	OR T2.StartDate > T1.StartDate AND T2.StartDate <T1.EndDate 
	OR T1.StartDate > T2.StartDate AND T1.StartDate < T2.StartDate 
	OR T1.EndDate > T2.StartDate AND T1.EndDate < T2.StartDate) 
	AND T1.VehicleID = T2.VehicleID
)
DELETE T FROM #T T INNER JOIN DelDateOverlap D ON T.PersonID = D.PersonID AND T.VehicleID = D.VehicleID AND T.EmployeeID = D.EmployeeID AND T.StartDate = D.StartDate
GO


--Reservation tábla feltöltése
INSERT Reservation
SELECT ResDate, StartDate, EndDate, T.PersonID, T.EmployeeID, T.VehicleID, 8000, 0, NULL
FROM #T T
INNER JOIN Vehicle V ON V.VehicleID = T.VehicleID 
ORDER BY ResDate
GO

--A foglalások 2%-a visszamondott foglalás
UPDATE Reservation 
SET IsCanceled = 1,
	CancelDate = DATEADD(DAY, ABS(CHECKSUM(NEWID()) % DATEDIFF(day, ReservationDate, PlannedRentDate)) + 1, ReservationDate)
WHERE Reservation.ReservationID IN
(
	SELECT TOP 5 PERCENT ReservationID FROM Reservation
	ORDER BY NEWID()
)

SELECT * FROM Reservation WHERE IsCanceled = 1
GO



----Megvalósult foglalások áttöltése a Rental táblába
--DBCC CHECKIDENT (Rental, RESEED, 0); --IDENTITY reset
--GO
--ALTER TABLE Rental DROP COLUMN TotalPrice
--ALTER TABLE Rental ADD TotalPrice AS dbo.CalcTotalPrice(RentalDate, RentalEndDate, VehicleID) 
--ALTER TABLE Rental ADD TotalPrice money

--BEGIN TRAN
--	INSERT Rental
--	SELECT PlannedRentDate, PlannedRentEndDate, PersonID, EmployeeID, R.VehicleID, ReservationID
--		, DATEDIFF(d, R.PlannedRentDate, R.PlannedRentEndDate) * V.DailyPrice
--	FROM Reservation R INNER JOIN Vehicle V ON R.VehicleID = V.VehicleID
--		WHERE IsCanceled = 0
--	SELECT * FROM Rental
--	INSERT INTO Rental VALUES('2021-08-04', '2021-08-10', 561, 4, 72, NULL, NULL)
--	UPDATE Vehicle
--		SET DailyPrice = 1000
--		WHERE VehicleID = 72
--ROLLBACK

--COMMIT