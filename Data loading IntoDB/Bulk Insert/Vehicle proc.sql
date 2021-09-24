BULK INSERT Vehicle
	FROM '\\DESKTOP-SR0EERQ\C$\\Training360 anyagok\_Adatbázis üzemeltetõ\Vizsgaremek\Adatfájlok\Vehicle.csv' 
	WITH(FORMAT = 'CSV'
	, FIRSTROW = 2
	, CODEPAGE = '65001'
	, FIELDTERMINATOR = ';'
	, ROWTERMINATOR = '0x0A') 
