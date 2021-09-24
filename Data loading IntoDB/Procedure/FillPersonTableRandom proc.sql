CREATE OR ALTER PROC FillPersonTableRandom
	@Count int
AS
	SET NOCOUNT ON
	DROP TABLE IF EXISTS #LN
	CREATE TABLE #LN (LastName varchar(30))
	BULK INSERT #LN 
		FROM '\\DESKTOP-SR0EERQ\C$\Training360 anyagok\_Adatb�zis �zemeltet�\Vizsgaremek\Adatf�jlok\Csal�dnevek.txt' 
		WITH(CODEPAGE = '65001')  
	
	UPDATE #LN SET LastName = LEFT(LastName,1) + LOWER(SUBSTRING(LastName, 2, 100))

	--N�i keresztnevek �s gender be�ll�t�s
	DROP TABLE IF EXISTS #FNF
	CREATE TABLE #FNF (FirstName varchar(30))
	BULK INSERT #FNF
		FROM '\\DESKTOP-SR0EERQ\C$\Training360 anyagok\_Adatb�zis �zemeltet�\Vizsgaremek\Adatf�jlok\osszesnoi.txt' 
		WITH(CODEPAGE = '65001'
		   , ROWTERMINATOR = '0x0A')  

	ALTER TABLE #FNF ADD Gender tinyint NOT NULL DEFAULT 1

	-- F�rfi keresztnevek �s gender be�ll�t�s
	CREATE TABLE #FNM (FirstName varchar(30))
	BULK INSERT #FNM
		FROM '\\DESKTOP-SR0EERQ\C$\\Training360 anyagok\_Adatb�zis �zemeltet�\Vizsgaremek\Adatf�jlok\osszesffi.txt' 
		WITH(CODEPAGE = '65001'
		, ROWTERMINATOR = '0x0A')  

	ALTER TABLE #FNM ADD Gender tinyint NOT NULL DEFAULT 2

	SELECT * 
	INTO #AllFN
	FROM
	(SELECT SUBSTRING(FirstName, 1, LEN(FirstName)-1) AS FirstName, Gender FROM #FNF
		UNION
		SELECT SUBSTRING(FirstName, 1, LEN(FirstName)-1) AS FirstName, Gender FROM #FNM) X

	-- szem�lyn�v el��ll�t�sa a csal�dnevek �s a keresztnevek alapj�n
	DROP TABLE IF EXISTS #LF
	SELECT ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) PersonID, LastName, FirstName, Gender
		INTO #LF
		FROM 
			(SELECT TOP (@Count) LastName, FirstName, Gender
			FROM #LN
			CROSS APPLY #AllFN
			ORDER BY NEWID() 
			) X

	--Utcanevek bet�lt�se �s csak a k�l�nb�z�ek megtart�sa
	DROP TABLE IF EXISTS #Street
	DROP TABLE IF EXISTS #TempStreet
	CREATE TABLE #TempStreet (Street varchar(50))
	BULK INSERT #TempStreet
		FROM '\\DESKTOP-SR0EERQ\C$\\Training360 anyagok\_Adatb�zis �zemeltet�\Vizsgaremek\Adatf�jlok\utcanevek.txt' 
		WITH(CODEPAGE = '65001'
		, ROWTERMINATOR = '0x0A')  

	--K�l�nb�z� utcanevek lev�llogat�sa
	SELECT * INTO #Street 
		FROM (SELECT DISTINCT Street FROM #TempStreet) X
	DROP TABLE #TempStreet

	DROP TABLE IF EXISTS #A
	SELECT ROW_NUMBER() OVER(ORDER BY(SELECT NULL)) PersonID, PostalCode, City, CONCAT(Street,FLOOR(((ABS(CHECKSUM(NEWID())) % 100001) 
			+ ((ABS(CHECKSUM(NEWID())) % 100001) * 00000.1) )/ 1100)) AS Street
		INTO #A
		FROM (SELECT TOP (@Count) PostalCode, City, Street
				FROM #Street
				CROSS APPLY DictPostalCode
				ORDER BY NEWID() ) X

	--Person t�bla felt�lt�se
	SET IDENTITY_INSERT Person ON
	INSERT Person (PersonID, LastName, FirstName, FullName, Gender, PostalCode, City, Address, BirthDate)
	SELECT #LF.PersonID, #LF.LastName, #LF.FirstName, #LF.LastName+' '+#LF.FirstName, #LF.Gender, #A.PostalCode, #A.City, #A.Street,
		DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 19001), '1950-01-01')
	FROM #A
	INNER JOIN #LF ON #LF.PersonID = #A.PersonID
	SET IDENTITY_INSERT Person OFF

GO

BEGIN TRAN
ALTER TABLE Person 
DROP CONSTRAINT UC_Email
EXEC dbo.FillPersonTableRandom 11000	
SELECT * FROM Person
--ROLLBACK
COMMIT
