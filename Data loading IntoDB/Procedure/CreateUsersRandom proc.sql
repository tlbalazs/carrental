CREATE OR ALTER PROC dbo.CreateUsersRandom
AS
SET NOCOUNT ON
INSERT INTO [User] (LoginName, PasswordHash, PersonID)
			SELECT LOWER(SUBSTRING(FirstName,1,3)+LastName)+CAST(FLOOR((RAND(CHECKSUM(NEWID())))*1000) as varchar)
			, CONVERT(varbinary(64), CRYPT_GEN_RANDOM(64))
			, PersonID
			FROM Person
	
	UPDATE [User]
	SET EmpRole = 1,
		UserRole = 0
	WHERE PersonID IN (SELECT PersonID FROM Employee) 

	UPDATE [User] SET LoginName = REPLACE(LoginName,'�','a')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'�','e')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'�','i')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'�','o')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'�','o')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'�','o')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'�','u')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'�','u')
	UPDATE [User] SET LoginName = REPLACE(LoginName,'�','u')
GO

--DBCC CHECKIDENT ('[User]', RESEED, 0);
--GO
--BEGIN TRAN
--EXEC dbo.CreateUsersRandom
--SELECT * FROM [User]
--COMMIT





