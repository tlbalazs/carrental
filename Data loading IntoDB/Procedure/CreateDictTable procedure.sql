CREATE OR ALTER PROC CreateDictTableFromHunSpatialDB
AS
	SET NOCOUNT ON
	SELECT *
		INTO CarRental.dbo.DictCounty
	FROM HunSpatial.dbo.County

	SELECT *
		INTO CarRental.dbo.DictPostalCode
	FROM HunSpatial.dbo.PostalCode

	ALTER TABLE DictPostalCode
	ADD CONSTRAINT PK_DictPostalCode_PostalCodeID PRIMARY KEY (PostalCodeID)

	ALTER TABLE DictCounty
	ADD CONSTRAINT PK_DictCounty_ID PRIMARY KEY (ID)

