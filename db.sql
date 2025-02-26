CREATE TABLE Company (
    CompanyID INT PRIMARY KEY,
    Name VARCHAR(255),
    ContactEmail VARCHAR(255),
    Address VARCHAR(255),
    Representative VARCHAR(255),
    TaxCode VARCHAR(50)
);

CREATE TABLE Document (
    DocumentID INT PRIMARY KEY,
    DocumentName VARCHAR(255),
    Type VARCHAR(50),
    Status VARCHAR(50),
    PriorityLevel INT,
    Evaluation VARCHAR(255)
);

CREATE TABLE DocumentDetails (
    DetailID INT PRIMARY KEY,
    DocumentID INT,
    DocumentName VARCHAR(255),
    Type VARCHAR(50),
    Description TEXT,
    FOREIGN KEY (DocumentID) REFERENCES Document(DocumentID)
);

CREATE TABLE Candidate (
    CandidateID INT PRIMARY KEY,
    FullName VARCHAR(255),
    PhoneNumber VARCHAR(20),
    BirthDate DATE,
    Email VARCHAR(255)
);

CREATE TABLE RecruitmentInfo (
    InfoID INT PRIMARY KEY,
    JobPosition VARCHAR(255),
    NumberOfVacancies INT,
    StartDate DATE,
    EndDate DATE,
    CandidateRequirements TEXT,
    CompanyID INT,
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

CREATE TABLE CandidateApplication (
    ApplicationID INT PRIMARY KEY,
    InfoID INT,
    JobPosition VARCHAR(255),
    ApplicationDate DATE,
    FOREIGN KEY (InfoID) REFERENCES RecruitmentInfo(InfoID)
);

CREATE TABLE AdvertisingRegistration (
    AdRegistrationID INT PRIMARY KEY,
    InfoID INT,
    AdvertisingMethod VARCHAR(255),
    AdvertisingPeriod DATE,
    FOREIGN KEY (InfoID) REFERENCES RecruitmentInfo(InfoID)
);

CREATE TABLE Service (
    ServiceID INT PRIMARY KEY,
    ServiceName VARCHAR(255),
    ServicePrice DECIMAL(10, 2)
);

CREATE TABLE Invoice (
    InvoiceID INT PRIMARY KEY,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    TotalAmount DECIMAL(10, 2),
    AdvertisingMethod VARCHAR(255)
);

CREATE TABLE PaymentDeadline (
    DeadlineID INT PRIMARY KEY,
    PaymentAmount DECIMAL(10, 2),
    PaymentTimes INT,
    InvoiceID INT,
    FOREIGN KEY (InvoiceID) REFERENCES Invoice(InvoiceID)
);

CREATE TABLE Employee (
    EmployeeID INT PRIMARY KEY,
    FullName VARCHAR(255),
    PhoneNumber VARCHAR(20),
    BirthDate DATE,
    Email VARCHAR(255),
    Position VARCHAR(255)
);

CREATE TABLE Strategy (
    StrategyID INT PRIMARY KEY,
    StrategyName VARCHAR(255),
    Policy TEXT
);

CREATE TABLE Proposal (
    StrategyID INT,
    EmployeeID INT,
    PRIMARY KEY (StrategyID, EmployeeID),
    FOREIGN KEY (StrategyID) REFERENCES Strategy(StrategyID),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);
