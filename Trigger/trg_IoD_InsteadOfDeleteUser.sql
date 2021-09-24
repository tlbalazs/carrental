CREATE OR ALTER TRIGGER trg_IoD_InsteadDeleteUser
	ON dbo.[User]
	INSTEAD OF DELETE
AS
BEGIN
	SET NOCOUNT ON
	UPDATE [User] 
		SET IsActive = 0,
			EmpRole = 0,
			AdminRole = 0,
			RappRole = 0,
			UserRole = 0,
			ModifiedDate = SYSDATETIME()
		FROM [User] U INNER JOIN deleted D ON U.UserID = D.UserID
		WHERE U.UserID = D.UserID
END