CREATE OR ALTER PROC emp.procAddNewRental
	@RentalDate date = NULL,
	@RentalEndDate date = NULL,
	@PersonID int = NULL,
	@EmployeeID int = NULL,
	@VehicleID int = NULL
AS
BEGIN
	SET NOCOUNT ON
	IF(@RentalDate IS NULL OR @RentalEndDate IS NULL OR @PersonID IS NULL OR @EmployeeID IS NULL OR @VehicleID IS NULL)
		RETURN -1
	ELSE IF(@RentalEndDate < @RentalDate)
		RETURN -2
	ELSE IF	(SELECT COUNT(1) FROM Rental R 
				WHERE (@RentalDate >= R.RentalDate AND @RentalDate <= R.RentalEndDate 
				OR @RentalEndDate >= R.RentalDate AND @RentalEndDate <= R.RentalEndDate 
				OR R.RentalDate >= @RentalDate AND R.RentalDate <= @RentalEndDate 
				OR R.RentalEndDate >= @RentalDate AND R.RentalEndDate <= @RentalEndDate) 
				AND R.VehicleID = @VehicleID 
			)  > 0
		RETURN -3

	INSERT INTO Rental(RentalDate, RentalEndDate, PersonID, EmployeeID,VehicleID)
	VALUES (@RentalDate, @RentalEndDate, @PersonID, @EmployeeID, @VehicleID)
END 

