CREATE OR ALTER PROC CreateEmailForPerson
AS
	SET NOCOUNT ON
	;WITH Random
	AS
	(
	SELECT 
		  p1.PersonID,
		  p1.[FirstName],
		  p1.[LastName],
		  p1.BirthDate,
		  CAST(RAND(CHECKSUM(NEWID()))*5 as int) randomemail
	  FROM [dbo].Person p1
	)
	UPDATE Person
	SET Email = R.email
	FROM (
			SELECT PersonID,
			email=
			CASE
				when randomemail = 0 then 
				lower(left(FirstName,3)+[LastName])+(CAST(YEAR(BirthDate) as varchar))+'@hotmail.com'
				when randomemail = 1 then 
				lower(left(FirstName,3)+[LastName])+(CAST(YEAR(BirthDate) as varchar))+'@gmail.com'
				when randomemail = 2 then 
				lower(left(FirstName,3)+[LastName])+(CAST(YEAR(BirthDate) as varchar))+'@freemail.hu'
				when randomemail = 3 then 
				lower(left(FirstName,3)+[LastName])+(CAST(YEAR(BirthDate) as varchar))+'@outlook.com'
				else
				lower(left(FirstName,3)+[LastName])+(CAST(YEAR(BirthDate) as varchar))+'@yahoo.com'
			END
			FROM Random) R
	INNER JOIN 
	Person P ON P.PersonID = R.PersonID

	Update Person SET Email = REPLACE(Email,'�','a')
	Update Person SET Email = REPLACE(Email,'�','e')
	Update Person SET Email = REPLACE(Email,'�','i')
	Update Person SET Email = REPLACE(Email,'�','o')
	Update Person SET Email = REPLACE(Email,'�','o')
	Update Person SET Email = REPLACE(Email,'�','o')
	Update Person SET Email = REPLACE(Email,'�','u')
	Update Person SET Email = REPLACE(Email,'�','u')
	Update Person SET Email = REPLACE(Email,'�','u')
GO

BEGIN TRAN
	EXEC CreateEmailForPerson
	SELECT * FROM Person
	ALTER TABLE [Person]
	ADD CONSTRAINT UC_Email UNIQUE (Email)
COMMIT
ROLLBACK
