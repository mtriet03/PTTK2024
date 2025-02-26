-- Drop existing tables
DROP TABLE Company CASCADE CONSTRAINTS;
DROP TABLE RecruitmentInfo CASCADE CONSTRAINTS;
DROP TABLE AdvertisingRegistration CASCADE CONSTRAINTS;
DROP TABLE CandidateApplication CASCADE CONSTRAINTS;
DROP TABLE DocumentDetails CASCADE CONSTRAINTS;
DROP TABLE Candidate CASCADE CONSTRAINTS;
DROP TABLE Service CASCADE CONSTRAINTS;
DROP TABLE ServiceUsed CASCADE CONSTRAINTS;
DROP TABLE Invoice CASCADE CONSTRAINTS;
DROP TABLE PaymentDeadline CASCADE CONSTRAINTS;
DROP TABLE Employee CASCADE CONSTRAINTS;
DROP TABLE Strategy CASCADE CONSTRAINTS;
DROP TABLE Notification CASCADE CONSTRAINTS;

-- Create Company table
CREATE TABLE Company (
    CompanyID VARCHAR2(5) PRIMARY KEY,
    Name VARCHAR2(255),
    ContactEmail VARCHAR2(255),
    Address VARCHAR2(255),
    Representative VARCHAR2(255),
    TaxCode VARCHAR2(50)
);

-- Create RecruitmentInfo table
CREATE TABLE RecruitmentInfo (
    InfoID VARCHAR2(5) PRIMARY KEY,
    JobPosition VARCHAR2(255),
    NumberOfVacancies NUMBER,
    StartDate DATE,
    EndDate DATE,
    CandidateRequirements VARCHAR2(255),
    CompanyID VARCHAR2(5),
    FOREIGN KEY (CompanyID) REFERENCES Company(CompanyID)
);

-- Create AdvertisingRegistration table
CREATE TABLE AdvertisingRegistration (
    AdRegistrationID VARCHAR2(5) PRIMARY KEY,
    InfoID VARCHAR2(5),
    AdvertisingMethod VARCHAR2(255),
    AdvertisingPeriod DATE,
    FOREIGN KEY (InfoID) REFERENCES RecruitmentInfo(InfoID)
);

-- Create Candidate table
CREATE TABLE Candidate (
    CandidateID VARCHAR2(5) PRIMARY KEY,
    FullName VARCHAR2(255),
    PhoneNumber VARCHAR2(10),
    BirthDate DATE,
    Email VARCHAR2(255)
);

-- Create CandidateApplication table
CREATE TABLE CandidateApplication (
    ApplicationID VARCHAR2(5) PRIMARY KEY,
    InfoID VARCHAR2(5),
    ApplicationDate DATE,
    Status VARCHAR2(50),
    PriorityLevel NUMBER,
    Evaluation VARCHAR2(255),
    CandidateID VARCHAR2(5) REFERENCES Candidate(CandidateID),
    FOREIGN KEY (InfoID) REFERENCES RecruitmentInfo(InfoID)
);


-- Create DocumentDetails table
CREATE TABLE DocumentDetails (
    DetailID NUMBER,
    ApplicationID VARCHAR2(5),
    DocumentName VARCHAR2(255),
    Type VARCHAR2(50),
    Description VARCHAR2(255),
    FOREIGN KEY (ApplicationID) REFERENCES CandidateApplication(ApplicationID),
    PRIMARY KEY (DetailID,ApplicationID)
);


-- Create Service table
CREATE TABLE Service (
    ServiceID VARCHAR2(5) PRIMARY KEY,
    ServiceName VARCHAR2(255),
    ServicePrice NUMBER(10, 2)
);

CREATE TABLE ServiceUsed(
    ServiceID VARCHAR2(5),
    AdRegistrationID VARCHAR2(5),
    PRIMARY KEY (ServiceID,AdRegistrationID),
    FOREIGN KEY (ServiceID) REFERENCES Service (ServiceID),
    FOREIGN KEY (AdRegistrationID) REFERENCES AdvertisingRegistration (AdRegistrationID)
);

-- Create Invoice table
CREATE TABLE Invoice (
    InvoiceID VARCHAR2(5) PRIMARY KEY,
    AdRegistrationID VARCHAR2(5) REFERENCES AdvertisingRegistration (AdRegistrationID),
    Amount NUMBER(10, 2), --the money that customer paid
    PaymentDate DATE--,
    --TotalAmount NUMBER(10, 2)
);

-- Create PaymentDeadline table
CREATE TABLE PaymentDeadline (
    PaymentTimes NUMBER,
    PaymentAmount NUMBER(10, 2),
    InvoiceID VARCHAR2(5) REFERENCES Invoice(InvoiceID),
    PRIMARY KEY (InvoiceID,PaymentTimes) 
);

-- Create Employee table
CREATE TABLE Employee (
    EmployeeID VARCHAR2(6) PRIMARY KEY,
    FullName VARCHAR2(255),
    PhoneNumber VARCHAR2(20),
    BirthDate DATE,
    Email VARCHAR2(255),
    Position VARCHAR2(255)
);

-- Create Strategy table
CREATE TABLE Strategy (
    StrategyID VARCHAR2(5) PRIMARY KEY,
    StrategyName VARCHAR2(255) NOT NULL,
    StrategyPolicy VARCHAR2(255) NOT NULL,
    EmployeeID VARCHAR2(5),
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID),
    UNIQUE(StrategyName, StrategyPolicy)
);

-- Create Notification table
CREATE TABLE Notification (
    NotificationID VARCHAR2(5) PRIMARY KEY,
    Title VARCHAR2(255),
    Content VARCHAR2(1000),
    EmployeeID VARCHAR2(5) NOT NULL,
    ApplicationID VARCHAR2(5) REFERENCES CandidateApplication(ApplicationID) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID)
);

--Ham tinh tong tien
CREATE OR REPLACE FUNCTION calculate_total_service_price(p_AdRegistrationID IN VARCHAR2)
RETURN NUMBER
IS
    v_total_price NUMBER := 0;
BEGIN
    SELECT SUM(s.ServicePrice)
    INTO v_total_price
    FROM Service s
    JOIN ServiceUsed su ON s.ServiceID = su.ServiceID
    WHERE su.AdRegistrationID = p_AdRegistrationID;

    RETURN v_total_price;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN 0; -- Return 0 if no services found for the given AdRegistrationID
    WHEN OTHERS THEN
        RAISE;
END;
/
