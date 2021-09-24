CREATE OR ALTER PROCEDURE rapp.procCheckVIN (@VIN AS varchar(17) = NULL)
AS
	BEGIN
		SET NOCOUNT ON
		IF @VIN IS NULL
			RETURN -1
		IF(LEN(@VIN) <> 17) 
			RETURN -2

		DECLARE @Transliteration table(
			ID int IDENTITY(1,1) not null,
			TKey char,
			TValue smallint
		)
		INSERT INTO @Transliteration VALUES('a', 1)
		INSERT INTO @Transliteration VALUES('b', 2)
		INSERT INTO @Transliteration VALUES('c', 3)
		INSERT INTO @Transliteration VALUES('d', 4)
		INSERT INTO @Transliteration VALUES('e', 5)
		INSERT INTO @Transliteration VALUES('f', 6)
		INSERT INTO @Transliteration VALUES('g', 7)
		INSERT INTO @Transliteration VALUES('h', 8)
		INSERT INTO @Transliteration VALUES('j', 1)
		INSERT INTO @Transliteration VALUES('k', 2)
		INSERT INTO @Transliteration VALUES('l', 3)
		INSERT INTO @Transliteration VALUES('m', 4)
		INSERT INTO @Transliteration VALUES('n', 5)
		INSERT INTO @Transliteration VALUES('p', 7)
		INSERT INTO @Transliteration VALUES('r', 9)
		INSERT INTO @Transliteration VALUES('s', 2)
		INSERT INTO @Transliteration VALUES('t', 3)
		INSERT INTO @Transliteration VALUES('u', 4)
		INSERT INTO @Transliteration VALUES('v', 5)
		INSERT INTO @Transliteration VALUES('w', 6)
		INSERT INTO @Transliteration VALUES('x', 7)
		INSERT INTO @Transliteration VALUES('y', 8)
		INSERT INTO @Transliteration VALUES('z', 9)
	
		DECLARE @Weight table (
			Position int IDENTITY(1,1) NOT NULL,
			PositionWeight smallint
		)
		INSERT INTO @Weight VALUES(8)
		INSERT INTO @Weight VALUES(7)
		INSERT INTO @Weight VALUES(6)
		INSERT INTO @Weight VALUES(5)
		INSERT INTO @Weight VALUES(4)
		INSERT INTO @Weight VALUES(3)
		INSERT INTO @Weight VALUES(2)
		INSERT INTO @Weight VALUES(10)
		INSERT INTO @Weight VALUES(0)
		INSERT INTO @Weight VALUES(9)
		INSERT INTO @Weight VALUES(8)
		INSERT INTO @Weight VALUES(7)
		INSERT INTO @Weight VALUES(6)
		INSERT INTO @Weight VALUES(5)
		INSERT INTO @Weight VALUES(4)
		INSERT INTO @Weight VALUES(3)
		INSERT INTO @Weight VALUES(2)
	
		DECLARE @Cnt tinyint = 1
		DECLARE @CheckSUM smallint = 0
		DECLARE @CheckDigit tinyint = 0
		SET @VIN = LOWER(@VIN)
		DECLARE @ModifiedVIN AS varchar(17) = @VIN

		WHILE @Cnt <= 17
			BEGIN
				IF(SUBSTRING(@VIN, @Cnt, 1) IN ('i', 'o', 'q'))
				BEGIN 
					RETURN -3
				END
				SET @CheckSUM += 
					CASE 
						WHEN TRY_PARSE(SUBSTRING(@VIN, @Cnt, 1) AS int) IS NOT NULL --TRUE: az adott karakter numerikus; FALSE: az adott karakter betû
							THEN PARSE(SUBSTRING(@VIN, @Cnt, 1) AS int) * (SELECT PositionWeight 
								FROM @Weight WHERE Position = @Cnt)
							ELSE (SELECT TValue FROM @Transliteration WHERE TKey LIKE SUBSTRING(@VIN, @Cnt, 1)) 
								* (SELECT PositionWeight FROM @Weight WHERE Position = @Cnt)
					END
				SET @Cnt+=1
			END
		SET @CheckDigit = @CheckSUM % 11
		IF(@CheckDigit = 10)
			BEGIN 
				SET @ModifiedVIN = STUFF(@ModifiedVIN, 9, 1, 'x')
			END
		ELSE 
			BEGIN 
				SET @ModifiedVIN = STUFF(@ModifiedVIN, 9, 1, @CheckDigit)
			END

		IF (@ModifiedVIN LIKE @VIN)
			BEGIN
				RETURN 0
			END
		ELSE
			BEGIN
				RETURN -4
			END
	END
GO

--Az alábbi példákkal mûködik:
--Ford Passenger
DECLARE @VIN AS varchar(17) ='1FALP47VXTF110837'
declare @result int
EXEC @result = procCheckVIN 
SELECT @result
GO
--Tesla
DECLARE @VIN AS varchar(17) ='5YJSA1DP2CFS00001'
declare @result int
EXEC @result = CheckVIN 
SELECT @result


--Mazda MX5 Miata
DECLARE @VIN3 AS varchar(17) ='JM1NB3538Y0153757'
EXEC CheckVIN @VIN3;

--Ezekkel nem mûködik
--Porsche
DECLARE @VIN4 AS varchar(17) ='WP0ZZZ99ZTS392124'
EXEC CheckVIN @VIN4;

--Suzuki Swift
DECLARE @VIN5 AS varchar(17) ='TSMMAB44S00401440'
EXEC CheckVIN @VIN5;

