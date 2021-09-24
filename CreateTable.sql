USE CarRental;

CREATE TABLE [Person] (
  [PersonID] int IDENTITY(1,1) NOT NULL,
  [LastName] varchar(50) NOT NULL,
  [FirstName] varchar(50) NOT NULL,
  [FullName] varchar(100) NOT NULL,
  [Gender] tinyint,
  [PostalCode] varchar(8) NOT NULL,
  [City] varchar(50) NOT NULL,
  [Address] varchar(150) NOT NULL,
  [FullNameI] varchar(50),
  [PostalCodeI] varchar(8),
  [CityI] varchar(50),
  [AddressI] varchar(150),
  [Phone] varchar(50) NOT NULL,
  [Email] varchar(50) NOT NULL,
  [BirthDate] date NOT NULL
)
GO

CREATE TABLE [Employee] (
  [EmployeeID] int IDENTITY(1,1) NOT NULL,
  [JobTitle] varchar(50),
  [HireDate] date NOT NULL,
  [PersonID] int NOT NULL,
  [WorkplaceID] int NOT NULL,
  [Salary] money NOT NULL
)
GO

CREATE TABLE [User] (
  [UserID] int IDENTITY(1,1) NOT NULL,
  [LoginName] varchar(30),
  [PasswordHash] Binary(64),
  [AdminRole] bit,
  [UserRole] bit,
  [EmpRole] bit,
  [RappRole] bit,
  [IsActive] bit,
  [PersonID] int NOT NULL,

)
GO

CREATE TABLE [Vehicle] (
  [VehicleID] int IDENTITY(1,1) NOT NULL,
  [Manufacturer] varchar(50),
  [Modell] varchar(50),
  [DailyPrice] int,
  [ChassisNumber] varchar(25),
  [PlateNumber] varchar(9),
  [Mileage] int,
  [PurchaseDate] date,
  [VehicleDetailID] int NOT NULL,
  [VehicleTypeID] int NOT NULL,
  [WorkplaceID] int NOT NULL
)
GO

CREATE TABLE [VehicleType] (
  [VehicleTypeID] int IDENTITY(1,1) NOT NULL,
  [VehicleTypeName] varchar(50)
)
GO

CREATE TABLE [VehicleDetail] (
  [VehicleDetailID] int IDENTITY(1,1) NOT NULL,
  [PassengerCapacity] tinyint,
  [Door] tinyint,
  [Color] varchar(20),
  [Transmission] varchar(20),
  [Engine] varchar(100),
  [FuelType] varchar(20),
  [HorsePower] smallint
)
GO

CREATE TABLE VehicleImage (
	ImageID INT IDENTITY (1,1) NOT NULL,
	ImageName VARCHAR (25),
	Picture VARBINARY (MAX) FILESTREAM,
	rowguid UNIQUEIDENTIFIER ROWGUIDCOL NOT NULL UNIQUE
)
GO

CREATE TABLE ShiftVehicleImage(
	VehicleID int NOT NULL,
	ImageID INT NOT NULL
)
GO


CREATE TABLE [ShiftVehicleFeature] (
  [VehicleID] int NOT NULL,
  [FeatureID] int
)
GO

CREATE TABLE [CarFeature] (
  [FeatureID] int IDENTITY(1,1) NOT NULL,
  [FeatureName] varchar(50),
  [FeatureIsOptional] bit
)
GO

CREATE TABLE [Rental] (
  [RentalID] int IDENTITY(1,1) NOT NULL,
  [RentalDate] date,
  [RentalEndDate] date,
  [PersonID] int NOT NULL,
  [EmployeeID] int NOT NULL,
  [VehicleID] int NOT NULL,
  [ReservationID] int,
  [TotalPrice] money
)
GO

CREATE TABLE [Reservation] (
  [ReservationID] int IDENTITY(1,1) NOT NULL,
  [ReservationDate] date,
  [PlannedRentDate] date,
  [PlannedRentEndDate] date,
  [PersonID] int NOT NULL,
  [EmployeeID] int,
  [VehicleID] int NOT NULL,
  [ReservationPrice] int,
  [IsCanceled] bit,
  [CancelDate] date
)
GO

CREATE TABLE [Workplace] (
  [WorkplaceID] int IDENTITY(1,1) NOT NULL,
  [WpAddress] varchar(150),
  [WpPostalCode] varchar(8),
  [WpCity] varchar(50),
  [WpEmail] varchar(50),
  [WpPhone] varchar(50)
)
GO

ALTER TABLE Person
ADD CONSTRAINT PK_Person_PersonID PRIMARY KEY (PersonID)
GO

ALTER TABLE Employee
ADD CONSTRAINT PK_Employee_EmployeeID PRIMARY KEY (EmployeeID)
GO

ALTER TABLE [User]
ADD CONSTRAINT PK_User_UserID PRIMARY KEY (UserID)
GO

ALTER TABLE Vehicle
ADD CONSTRAINT PK_Vehicle_VehicleID PRIMARY KEY (VehicleID)
GO

ALTER TABLE VehicleType
ADD CONSTRAINT PK_VehicleType_VehicleTypeID PRIMARY KEY (VehicleTypeID)
GO

ALTER TABLE VehicleDetail
ADD CONSTRAINT PK_VehicleDetail_VehicleDetailID PRIMARY KEY (VehicleDetailID)
GO

ALTER TABLE CarFeature
ADD CONSTRAINT PK_CarFeature_FeatureID PRIMARY KEY (FeatureID)
GO

ALTER TABLE Rental
ADD CONSTRAINT PK_Rental_RentalID PRIMARY KEY (RentalID)
GO

ALTER TABLE Reservation
ADD CONSTRAINT PK_Reservation_ReservationID PRIMARY KEY (ReservationID)
GO

ALTER TABLE Workplace
ADD CONSTRAINT PK_Workplace_WorkplaceID PRIMARY KEY (WorkplaceID)
GO

ALTER TABLE VehicleImage
ADD CONSTRAINT PK_VehicleImage_ImageID PRIMARY KEY (ImageID)
GO

ALTER TABLE Employee
ADD CONSTRAINT FK_Employee_PersonID_Person_PersonID
FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
GO

ALTER TABLE [User] 
ADD CONSTRAINT FK_User_PersonID_Person_PersonID 
FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
GO

ALTER TABLE Rental
ADD CONSTRAINT FK_Rental_PersonID_Person_PersonID
FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
GO

ALTER TABLE Reservation
ADD CONSTRAINT FK_Reservation_PersonID_Person_PersonID
FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
GO

ALTER TABLE Rental
ADD CONSTRAINT FK_Rental_EmployeeID_Employee_EmployeeID
FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
GO

ALTER TABLE Reservation
ADD CONSTRAINT FK_Reservation_EmployeeID_Employee_EmployeeID
FOREIGN KEY (EmployeeID) REFERENCES Employee (EmployeeID)
GO

ALTER TABLE Rental
ADD CONSTRAINT FK_Rental_ReservationID_Reservation_ReservationID
FOREIGN KEY (ReservationID) REFERENCES Reservation (ReservationID)
GO

ALTER TABLE Vehicle
ADD CONSTRAINT FK_Vehicle_VehicleDetailID_VehicleDetail_VehicleDetailID
FOREIGN KEY (VehicleDetailID) REFERENCES VehicleDetail (VehicleDetailID)
GO

ALTER TABLE Vehicle
ADD CONSTRAINT FK_Vehicle_VehicleTypeID_VehicleType_VehicleTypeID
FOREIGN KEY (VehicleTypeID) REFERENCES VehicleType (VehicleTypeID)
GO

ALTER TABLE Employee
ADD CONSTRAINT FK_Employee_WorkplaceID_Workplace_WorkplaceID 
FOREIGN KEY (WorkplaceID) REFERENCES Workplace (WorkplaceID)
GO

ALTER TABLE Rental
ADD CONSTRAINT FK_Rental_VehicleID_Vehicle_VehicleID
FOREIGN KEY (VehicleID) REFERENCES Vehicle (VehicleID)
GO

ALTER TABLE Reservation
ADD CONSTRAINT FK_Reservation_VehicleID_Vehicle_VehicleID 
FOREIGN KEY (VehicleID) REFERENCES Vehicle (VehicleID)
GO

ALTER TABLE Vehicle
ADD CONSTRAINT FK_Vehicle_WorkplaceID_Workplace_WorkplaceID
FOREIGN KEY (WorkplaceID) REFERENCES Workplace (WorkplaceID)
GO

ALTER TABLE ShiftVehicleFeature 
ADD CONSTRAINT FK_ShiftVehicleFeature_VehicleID 
FOREIGN KEY (VehicleID) REFERENCES Vehicle (VehicleID)
GO

ALTER TABLE ShiftVehicleFeature
ADD CONSTRAINT FK_ShiftVehicleFeature_FeatureID_CarFeature_FeatureID
FOREIGN KEY (FeatureID) REFERENCES CarFeature (FeatureID)
GO

ALTER TABLE ShiftVehicleImage
ADD CONSTRAINT FK_ShiftVehicleImage_ImageID_VehicleImage_ImageID
FOREIGN KEY (ImageID) REFERENCES VehicleImage (ImageID)
GO

ALTER TABLE ShiftVehicleImage
ADD CONSTRAINT FK_ShiftVehicleImage_VehicleID_Vehicle_VehicleID
FOREIGN KEY (VehicleID) REFERENCES Vehicle (VehicleID)
GO

ALTER TABLE [User]
ADD CONSTRAINT df_AdminRole
DEFAULT 0 FOR AdminRole
GO

ALTER TABLE [User]
ADD CONSTRAINT df_EmpRole
DEFAULT 0 FOR EmpRole
GO

ALTER TABLE [User]
ADD CONSTRAINT df_RappRole
DEFAULT 0 FOR RappRole
GO

ALTER TABLE [User]
ADD CONSTRAINT df_IsActive
DEFAULT 1 FOR IsActive
GO

ALTER TABLE [User]
ADD CONSTRAINT df_UserRole
DEFAULT 1 FOR UserRole
GO

ALTER TABLE CarFeature
ADD CONSTRAINT df_FeatureIsOptional
DEFAULT 0 FOR FeatureIsOptional
GO

ALTER TABLE Reservation
ADD CONSTRAINT df_IsCanceled
DEFAULT 0 FOR IsCanceled
GO

ALTER TABLE Reservation
ADD CONSTRAINT df_ReservationPrice
DEFAULT 8000 FOR ReservationPrice
GO

ALTER TABLE Employee
ADD CONSTRAINT Check_Salary
	CHECK (Salary > 0)
GO

ALTER TABLE Person
ADD CONSTRAINT Check_Email
	CHECK (Email LIKE '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%')
GO

ALTER TABLE Workplace
ADD CONSTRAINT Check_EmailWp
	CHECK (WpEmail LIKE '%[A-Z0-9][@][A-Z0-9]%[.][A-Z0-9]%')
GO

ALTER TABLE Vehicle
ADD CONSTRAINT Check_ChassisNumber
	CHECK (LEN(ChassisNumber) = 17)
GO

ALTER TABLE Vehicle
ADD CONSTRAINT Check_DailyPrice
	CHECK (DailyPrice > 0)
GO

ALTER TABLE Vehicle
ADD CONSTRAINT Check_PlateNumber
	CHECK (PlateNumber LIKE '%[A-Z]%[-]%[0-9]%')
GO

ALTER TABLE Person
ADD CONSTRAINT Check_Gender
	CHECK (Gender IN (1,2))
GO
			
CREATE UNIQUE NONCLUSTERED INDEX UIX_Vehicle_PlateNumber ON Vehicle(PlateNumber) WITH IGNORE_DUP_KEY
CREATE UNIQUE NONCLUSTERED INDEX UIX_Vehicle_ChassisNumber ON Vehicle(ChassisNumber) WITH IGNORE_DUP_KEY
CREATE UNIQUE NONCLUSTERED INDEX UIX_User_LoginName ON [User](LoginName) WITH IGNORE_DUP_KEY
CREATE UNIQUE NONCLUSTERED INDEX UIX_Person_Email ON Person(Email) WITH IGNORE_DUP_KEY
