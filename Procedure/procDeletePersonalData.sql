CREATE OR ALTER PROC dbo.procDeletePersonalData
AS
BEGIN
	SET NOCOUNT ON
	UPDATE Person 
		SET FirstName = NULL,
			LastName = NULL,
			FullName = NULL,
			Address = NULL,
			Phone = NULL,
			Email = NULL,
			BirthDate = NULL
	FROM Person P INNER JOIN [User] U ON P.PersonID = U.PersonID
	WHERE IsActive = 0 AND DATEDIFF(DAY, U.ModifiedDate, SYSDATETIME()) > 1826
	RETURN 0
END 
