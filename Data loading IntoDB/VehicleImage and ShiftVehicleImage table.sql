INSERT INTO VehicleImage (ImageName, Picture, rowguid)
	SELECT 'Chevrolet Camaro', 
	bulkcolumn, NEWID() FROM OPENROWSET(
		BULK 'C:\Training360 anyagok\_Adatbázis üzemeltetõ\Vizsgaremek\Adatfájlok\image\Chevrolet Camaro.jpeg', SINGLE_BLOB) AS x

INSERT INTO VehicleImage (ImageName, Picture, rowguid)
	SELECT '2009 Audi A4 Sedan 3.2B', 
	bulkcolumn, NEWID() FROM OPENROWSET(
		BULK 'C:\Training360 anyagok\_Adatbázis üzemeltetõ\Vizsgaremek\Adatfájlok\image\2009 Audi A4 Sedan 3.2B.jpeg', SINGLE_BLOB) AS x

INSERT INTO VehicleImage (ImageName, Picture, rowguid)
	SELECT '2010 Ford Ranger XLT', 
	bulkcolumn, NEWID() FROM OPENROWSET(
		BULK 'C:\Training360 anyagok\_Adatbázis üzemeltetõ\Vizsgaremek\Adatfájlok\image\2010 Ford Ranger XLT.jpg', SINGLE_BLOB) AS x

INSERT INTO ShiftVehicleImage
	SELECT VehicleID, 2 FROM Vehicle WHERE Modell LIKE '2009 Audi A4 Sedan 3.2'
GO
INSERT INTO ShiftVehicleImage
	SELECT VehicleID, 1 FROM Vehicle WHERE Modell LIKE '%Camaro%'
GO
INSERT INTO ShiftVehicleImage
	SELECT VehicleID, 3 FROM Vehicle WHERE Modell LIKE '%Ford Ranger%'
