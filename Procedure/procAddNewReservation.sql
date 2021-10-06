CREATE OR ALTER PROC emp.procAddNewReservation
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



DBCC CHECKIDENT (Reservation, RESEED, 28310);
BEGIN TRAN
declare @result int
EXEC @result = emp.procAddNewReservation '2021-09-10', '2021-09-13', 1,1, 64
SELECT @result
SELECT * FROM Reservation
ROLLBACK
