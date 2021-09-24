USE CarRental;

--Utcanevek bet�lt�se �s csak a k�l�nb�z�ek megtart�sa
DROP TABLE IF EXISTS #Street
DROP TABLE IF EXISTS #TempStreet
CREATE TABLE #TempStreet (Street varchar(50))
BULK INSERT #TempStreet
	FROM '\\DESKTOP-SR0EERQ\C$\\Training360 anyagok\_Adatb�zis �zemeltet�\Vizsgaremek\Adatf�jlok\utcanevek.txt' 
	WITH(CODEPAGE = '65001'
	, ROWTERMINATOR = '0x0A')  
GO

--K�l�nb�z� utcanevek lev�llogat�sa
SELECT * INTO #Street 
	FROM (SELECT DISTINCT Street FROM #TempStreet) X
DROP TABLE #TempStreet
GO

--Bemeneti adat n�h�ny sor�ban l�v� felesleges sz�k�z elt�vol�t�sa
UPDATE #Street 
SET Street = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(Street,CHAR(32),'()'),')(',''),'()',CHAR(32))))
--SELECT * FROM #Street ORDER BY Street

--C�mek gener�l�sa a DictPostalCode t�bla, az utcanevek �s v�letlenszer� h�zsz�mok alapj�n
DROP TABLE IF EXISTS #A
SELECT PostalCode, City, CONCAT(Street,FLOOR(((ABS(CHECKSUM(NEWID())) % 100001) 
		+ ((ABS(CHECKSUM(NEWID())) % 100001) * 00000.1) )/ 1100)) AS Address
	INTO #A
	FROM (SELECT TOP 500 PostalCode, City, Street
			FROM #Street
			CROSS APPLY DictPostalCode
			ORDER BY NEWID() ) X
GO

DROP TABLE IF EXISTS #Company
CREATE TABLE #Company (CompanyName varchar(50))
BULK INSERT #Company
	FROM '\\DESKTOP-SR0EERQ\C$\\Training360 anyagok\_Adatb�zis �zemeltet�\Vizsgaremek\Adatf�jlok\animals.txt' 
	WITH(CODEPAGE = '65001'
	, ROWTERMINATOR = '\n')  
GO

UPDATE #Company 
SET CompanyName = CompanyName+' Kft.';
SELECT * FROM #Company

DROP TABLE IF EXISTS #Invoice
SELECT TOP 500 * 
INTO #Invoice
FROM #A
CROSS APPLY #Company
ORDER BY NEWID()


SELECT TOP 4728 PersonID  
INTO #TempPerson
FROM Person
ORDER BY NEWID()

SELECT TOP 4728 * 
INTO 
#T
FROM #Invoice, #TempPerson ORDER BY NEWID()

BEGIN TRAN
UPDATE Person 
SET FullNameI = #T.CompanyName,
	PostalCodeI =#T.PostalCode,
	CityI = #T.City,
	AddressI = #T.Address
FROM #T
WHERE Person.PersonID = #T.PersonID
SELECT * FROM Person WHERE FullNameI IS NOT NULL
COMMIT


