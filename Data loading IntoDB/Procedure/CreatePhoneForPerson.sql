CREATE OR ALTER PROC CreatePhoneForPerson
AS
	SET NOCOUNT ON
	;WITH Random
	AS
	(
	SELECT 
		  p1.PersonID,
		  CAST(RAND(CHECKSUM(NEWID()))*3 as int) randomphone
	  FROM [dbo].Person p1
	)
	UPDATE Person
	SET Phone = R.Phone
	FROM (
			SELECT PersonID,
			Phone =
			CASE
				when randomphone = 0 then 
				'+3620'+SUBSTRING(CAST(ABS(CHECKSUM(NEWID())) as varchar),1,7)
				when randomphone = 1 then 
				'+3630'+SUBSTRING(CAST(ABS(CHECKSUM(NEWID())) as varchar),1,7)
				else
				'+3670'+SUBSTRING(CAST(ABS(CHECKSUM(NEWID())) as varchar),1,7)
			END
			FROM Random) R
	INNER JOIN 
	Person P ON P.PersonID = R.PersonID

BEGIN TRAN
	EXEC CreatePhoneForPerson
	SELECT * FROM Person ORDER BY PersonID
COMMIT
ROLLBACK
