Use  ProjectTravel

CREATE TABLE Administrator (
	AdminId INT IDENTITY (1,1) PRIMARY KEY,
    CNIC VARCHAR(20) UNIQUE NOT NULL,
    Name VARCHAR(100) NOT NULL,
    DOB  DATE NOT NULL,
	Email varchar (30) unique Not null,
	Role varchar(20) ,
    PasswordHash VARCHAR(25),
	Phone Varchar(15)  not null,
	Gender varchar(10),
    Nationality VARCHAR(50) default 'Pakistani'
);

CREATE TABLE Traveler (
    TravelId INT IDENTITY (1,1) PRIMARY KEY,
    CNIC VARCHAR(20) UNIQUE NOT NULL,
    Name VARCHAR(100) NOT NULL,
    DOB  DATE NOT NULL,
	Email varchar (30) unique Not null,
	Phone Varchar(15)  not null,
	Gender varchar(10),
    Nationality VARCHAR(50) default 'Pakistani',
	TStatus varchar(20) not null,
	RegisterDate DATE not null,
    PasswordHash VARCHAR(25)
);

CREATE TABLE Operator (
    OperatorId INT IDENTITY (1,1) PRIMARY KEY,
    CNIC VARCHAR(20) UNIQUE NOT NULL,
    Name VARCHAR(100) NOT NULL,
    DOB  DATE NOT NULL,
	Email varchar (30) unique Not null,
	Phone Varchar(15)  not null,
	Gender varchar(10),
    Nationality VARCHAR(50) default 'Pakistani',
	OStatus varchar(20) not null,
	RegisterDate DATE not null,
    PasswordHash VARCHAR(25),
	Rating INT check (Rating >=0 AND Rating <= 5),
	CompanyName VARCHAR(50) not null
);
CREATE TABLE TripCategory(
	CatId INT IDENTITY (1,1) PRIMARY KEY,
	CatType varchar(20) not null,
	Description varchar(100),
	AdminId INT,
	FOREIGN KEY (AdminId) REFERENCES Administrator(AdminId)
);
CREATE TABLE Trip(
	TripId INT IDENTITY (1,1) PRIMARY KEY,
    Title VARCHAR(100) not null,
	Destination varchar(30) not null,
	StartDate DATE not null,
	EndDate DATE not null ,
    BasicPrice FLOAT,
    Capacity INT,
    TripStatus varchar(20),
    CategoryID INT,
    OperatorID INT,
    FOREIGN KEY (OperatorID) REFERENCES Operator(OperatorId),
	FOREIGN KEY (CategoryID) REFERENCES TripCategory(CatId)
);
CREATE TABLE TripDescription(
	TripId INT,
	DayNo INT,
	Location varchar(30) not null,
	TripTime TIME not null,
	Description Text 
	PRIMARY KEY(TripId , DayNo),
	FOREIGN KEY (TripId) REFERENCES Trip(TripId)
);
CREATE TABLE CancellationPolicy(
	CancelID INT IDENTITY (1,1) PRIMARY KEY,
    RefundPercent FLOAT,
    Validity INT,
    Description TEXT
	);
CREATE TABLE Booking (
	BookingID INT IDENTITY (1,1) PRIMARY KEY,
    Price FLOAT,
    BookingDate DATE not null,
    InquiryDate DATE not null,
	NumOfPerson INT not null,
    Status VARCHAR(50) not null,
    AdminId INT,
    OperatorId INT,
	CancelPolicy INT,
	TripId INT,
    FOREIGN KEY (AdminId) REFERENCES Administrator(AdminId),
    FOREIGN KEY (OperatorId) REFERENCES Operator(OperatorId),
	FOREIGN KEY (CancelPolicy) REFERENCES CancellationPolicy(CancelID),
	FOREIGN KEY (TripId) REFERENCES Trip(TripId)

);

CREATE TABLE TravelHistory (
    TravelerID INT,
    BookingID INT,
	PRIMARY KEY (TravelerID , BookingID),
    FOREIGN KEY (TravelerID) REFERENCES Traveler(TravelId),
    FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
);

CREATE TABLE TravelerPreferences (
    PreferenceNo INT ,
    TravelerId INT,
    PreferenceDescription TEXT,
	PRIMARY KEY(TravelerId , PreferenceNo),
    FOREIGN KEY (TravelerId) REFERENCES Traveler(TravelId)
);
CREATE TABLE Passes(
	PassID INT IDENTITY (1,1) PRIMARY KEY,
	BookingId INT,
	Type varchar(30),
	Status varchar(20) not null default 'issued',
	IssueDate DATE not null,
	AdminId INt,
	FOREIGN KEY (AdminId) REFERENCES Administrator(AdminId),
	FOREIGN KEY (BookingId) REFERENCES Booking(BookingID)
);


CREATE TABLE Payment (
    PaymentID INT IDENTITY (1,1) PRIMARY KEY,
    BookingID INT,
    Amount FLOAT not null,
    PaymentDate DATE,
    Status VARCHAR(50) default 'pending',
    Method VARCHAR(50),
    FOREIGN KEY (BookingID) REFERENCES Booking(BookingID)
);

CREATE TABLE ServiceProvider (
    ProviderID INT IDENTITY (1,1) PRIMARY KEY,
    Name VARCHAR(100) not null,
    ContactNo VARCHAR(20) not null,
    Email VARCHAR(100) not null,
    Availability VARCHAR(50),
    Rating Int check ( Rating >=0 AND Rating <= 5) default 1,
    ServiceType varchar(20) not null,
	ContactPerson varchar(30),
    OperatorId INT,
    FOREIGN KEY (OperatorId) REFERENCES Operator(OperatorId)
);

CREATE TABLE Services (
    ServiceID INT IDENTITY (1,1) PRIMARY KEY,
    ServiceType VARCHAR(50),
    Description TEXT,
	ServiceAccepted BIT,
    Price FLOAT,
	ProviderId INt,
	FOREIGN KEY (ProviderId) REFERENCES ServiceProvider(ProviderID)
);

CREATE TABLE OperatorAssignServicesToTraveler (
    OperatorId INT,
    ServiceID INT,
    TravelerId INT,
    Status varchar(20) default 'accepted' ,
	PRIMARY KEY (OperatorId , ServiceID , TravelerId),
    FOREIGN KEY (OperatorId) REFERENCES Operator(OperatorId),
    FOREIGN KEY (ServiceID) REFERENCES Services(ServiceID),
    FOREIGN KEY (TravelerId) REFERENCES Traveler(TravelId)
);

CREATE TABLE Hotel (
    ProviderId INt,
	BookedRooms INt not null ,
	TotalRooms INT not null,
	PercentBooked FLOAT,
    FOREIGN KEY (ProviderId) REFERENCES ServiceProvider(ProviderID)
);

CREATE TABLE Transport (
    ProviderId INT,
	NumBusses INT not null,
	NumRoutes INT not null,
    BookingPerDay FLOAT,
    FOREIGN KEY (ProviderId) REFERENCES ServiceProvider(ProviderID)
);
--drop table GuidePersonalInfo
CREATE TABLE GuidePersonalInfo(
	
	CNIC VARCHAR(20) PRIMARY KEY,
	DOB DATE,
    Nationality VARCHAR(50),
    Gender VARCHAR(10)
);
CREATE TABLE Guide (
    ProviderId INT,
	CNIC VARCHAR(20) ,
    DestTravelled INT not null,
	TripsGuided INT not null,
   FOREIGN KEY (ProviderId) REFERENCES ServiceProvider(ProviderID),
  FOREIGN KEY (CNIC) REFERENCES GuidePersonalInfo(CNIC),
   PRIMARY KEY(ProviderId , CNIC)
);


CREATE TABLE Reviews(
	ReviewID INT IDENTITY (1,1) PRIMARY KEY,
	OperatorId INT,
	ProviderId INT,
	TravellerId INt,
	TripId INT,
	AdminId INT,
	TRating Int check ( TRating >=0 AND TRating <= 5) default 1,
	ORating Int check ( ORating >=0 AND ORating <= 5) default 1,
	PRating  Int check ( PRating >=0 AND PRating <= 5) default 1,
	ReviewDate DATE not null,
	ApprovedFlag BIT,
	ReviewText TEXT,
	FOREIGN KEY (AdminId) REFERENCES Administrator(AdminId),
	FOREIGN KEY (ProviderId) REFERENCES ServiceProvider(ProviderID),
	FOREIGN KEY (OperatorId) REFERENCES Operator(OperatorId),
    FOREIGN KEY (TravellerId) REFERENCES Traveler(TravelId),
	FOREIGN KEY (TripId) REFERENCES Trip(TripId)
);
