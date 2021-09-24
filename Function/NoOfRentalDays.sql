CREATE OR ALTER FUNCTION NoOfRentalDays(@VehicleID int = NULL)
	RETURNS int 
AS
BEGIN
	IF @VehicleID Is NULL
		RETURN -1
	DECLARE @day int
	SELECT @day = SUM(DATEDIFF(d, RentalDate, RentalEndDate))
	FROM Rental WHERE VehicleID = @VehicleID
	
	IF (@day IS NULL)
		SET @day = 0

	RETURN @day
END
GO

declare @ret int
exec @ret = dbo.NoOfRentalDays 3
SELECT @ret
