USE CarRental;

--Utcanevek betöltése és csak a különbözõek megtartása
DROP TABLE IF EXISTS #Street
DROP TABLE IF EXISTS #TempStreet
CREATE TABLE #TempStreet (Street varchar(50))
BULK INSERT #TempStreet
	FROM '\\DESKTOP-SR0EERQ\C$\\Training360 anyagok\_Adatbázis üzemeltetõ\Vizsgaremek\Adatfájlok\utcanevek.txt' 
	WITH(CODEPAGE = '65001'
	, ROWTERMINATOR = '0x0A')  
GO

--Különbözõ utcanevek levállogatása
SELECT * INTO #Street 
	FROM (SELECT DISTINCT Street FROM #TempStreet) X
DROP TABLE #TempStreet
GO

--Bemeneti adat néhány sorában lévõ felesleges szóköz eltávolítása
UPDATE #Street 
SET Street = LTRIM(RTRIM(REPLACE(REPLACE(REPLACE(Street,CHAR(32),'()'),')(',''),'()',CHAR(32))))
--SELECT * FROM #Street ORDER BY Street

--Címek generálása a DictPostalCode tábla, az utcanevek és véletlenszerû házszámok alapján
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
	FROM '\\DESKTOP-SR0EERQ\C$\\Training360 anyagok\_Adatbázis üzemeltetõ\Vizsgaremek\Adatfájlok\animals.txt' 
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


