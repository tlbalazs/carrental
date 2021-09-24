--Csúnyán de így kézzel F5-öt nyomogatva
BEGIN TRAN
UPDATE [User] 
	SET ModifiedDate =  DATEADD(DAY, ABS(CHECKSUM(NEWID()) % 2000), '2012-01-01')
	FROM [User] U INNER JOIN Reservation R ON U.PersonID = R.PersonID
	WHERE U.ModifiedDate > ReservationDate
	select * from [User] 
	COMMIT
ROLLBACK



BEGIN TRAN

;WITH FirstRent AS
	(SELECT *, ROW_NUMBER() OVER (PARTITION BY PersonID ORDER BY ReservationDate) AS 'FirstR'
		FROM Reservation
	)
UPDATE [User]
	SET ModifiedDate = DATEADD(d, -ABS(CHECKSUM(NEWID())) % 30 + 1, F.ReservationDate)
	FROM [User] U INNER JOIN FirstRent F ON U.PersonID = F.PersonID
	WHERE FirstR = 1

	select * from [User] order by modifieddate asc

ROLLBACK
	SELECT ABS(CHECKSUM(NEWID())) % 30 + 1