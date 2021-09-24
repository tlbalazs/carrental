CREATE OR ALTER FUNCTION VerifyHunPhoneNumber(@PhoneNumber varchar(15) = NULL)
	RETURNS int
AS
BEGIN	
	IF @PhoneNumber Is NULL
		RETURN -1
	IF (LEFT(@PhoneNumber, 3) NOT LIKE '+36' OR LEFT(@PhoneNumber, 2) NOT LIKE '06')
		SET @PhoneNumber = REPLACE(@PhoneNumber, '+36', '06')
	ELSE 
		RETURN -2

	IF(LEN(@PhoneNumber) <> 11)
		RETURN -3
	ELSE IF TRY_PARSE(RIGHT(@PhoneNumber, LEN(@PhoneNumber)-2) AS int) IS NULL
		RETURN -4
	ELSE IF(SELECT 1 WHERE SUBSTRING(@PhoneNumber, 3, 2) NOT IN ('20', '30', '31', '50', '70')) = 1
		RETURN -5
		
	RETURN 0
END
GO

declare @ret varchar(15)
exec @ret = VerifyHunPhoneNumber @PhoneNumber = '06308333279'
SELECT @ret
@PhoneNumber = '06308333279'