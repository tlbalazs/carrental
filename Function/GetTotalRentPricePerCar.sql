CREATE OR ALTER FUNCTION GetTotalRentPricePerCar(@VehicleID int)
	RETURNS money
AS
BEGIN
	IF @VehicleID IS NULL
		RETURN -1
	DECLARE @Price as money
	SELECT @Price = SUM(TotalPrice) FROM Rental R 
	WHERE VehicleID = @VehicleID

	IF (@Price IS NULL)
		SET @Price = 0

	RETURN @Price
END
GO

declare @ret int
exec @ret = fnc_GetTotalRentPricePerCar 3
SELECT @ret
