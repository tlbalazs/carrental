CREATE OR ALTER PROC FillShiftVehicleFeature
AS
	INSERT INTO ShiftVehicleFeature (VehicleID, FeatureID)
	SELECT TOP 1000 VehicleID, FeatureID FROM Vehicle V
	CROSS JOIN CarFeature
	ORDER BY NEWID()
GO