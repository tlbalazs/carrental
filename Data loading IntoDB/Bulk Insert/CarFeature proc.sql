BULK INSERT CarFeature
	FROM '\\DESKTOP-SR0EERQ\C$\\Training360 anyagok\_Adatb�zis �zemeltet�\Vizsgaremek\Adatf�jlok\carfeature.csv' 
	WITH(FORMAT = 'CSV'
	, FIRSTROW = 2
	, CODEPAGE = '65001'
	, FIELDTERMINATOR = ';'
	, ROWTERMINATOR = '\n')
