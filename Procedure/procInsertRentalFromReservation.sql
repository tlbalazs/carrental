CREATE OR ALTER PROC emp.procInsertRentalFromReservation(@ReservationID int = NULL)
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
