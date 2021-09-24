CREATE OR ALTER PROC FillRentalFromReservation
AS
	INSERT Rental
	SELECT PlannedRentDate, PlannedRentEndDate, PersonID, EmployeeID, R.VehicleID, ReservationID
		, DATEDIFF(d, R.PlannedRentDate, R.PlannedRentEndDate) * V.DailyPrice
	FROM Reservation R INNER JOIN Vehicle V ON R.VehicleID = V.VehicleID
	WHERE IsCanceled = 0
GO
