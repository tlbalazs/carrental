BULK INSERT CarFeature
	FROM '\\DESKTOP-SR0EERQ\C$\\Training360 anyagok\_Adatbázis üzemeltetõ\Vizsgaremek\Adatfájlok\carfeature.csv' 
	WITH(FORMAT = 'CSV'
	, FIRSTROW = 2
	, CODEPAGE = '65001'
	, FIELDTERMINATOR = ';'
	, ROWTERMINATOR = '\n')
