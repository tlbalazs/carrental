CREATE OR ALTER TRIGGER dbo.trg_AI_CalcTotalPrice
	ON dbo.Rental
	AFTER INSERT
AS 
BEGIN
	SET NOCOUNT ON
		DECLARE @DailyPrice money
		DECLARE @Day int
		SELECT @DailyPrice = DailyPrice FROM dbo.Vehicle V INNER JOIN inserted I ON V.VehicleID = I.VehicleID WHERE V.VehicleID = I.VehicleID
		SELECT @Day = DATEDIFF(d, inserted.RentalDate, inserted.RentalEndDate) FROM inserted
		UPDATE Rental
			SET TotalPrice = @DailyPrice * @Day
			FROM Rental R 
			INNER JOIN inserted I ON R.VehicleID = I.VehicleID
			WHERE R.VehicleID = I.VehicleID AND R.RentalID = I.RentalID
END
GO
