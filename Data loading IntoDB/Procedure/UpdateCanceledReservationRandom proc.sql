CREATE OR ALTER PROC UpdateCanceledReservationRandom
AS
	UPDATE Reservation 
	SET IsCanceled = 1,
		CancelDate = DATEADD(DAY, ABS(CHECKSUM(NEWID()) % DATEDIFF(day, ReservationDate, PlannedRentDate)) + 1, ReservationDate)
	WHERE Reservation.ReservationID IN
	(
		SELECT TOP 5 PERCENT ReservationID FROM Reservation
		ORDER BY NEWID()
	)

