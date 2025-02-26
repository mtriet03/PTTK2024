DROP ROLE DoanhNghiep;
DROP ROLE NhanVien;
DROP ROLE UngVien;
DROP ROLE BanLanhDao;
---
CREATE ROLE DoanhNghiep;
CREATE ROLE NhanVien;
CREATE ROLE UngVien;
CREATE ROLE BanLanhDao;

-- Insert data into Company table
INSERT INTO Company (CompanyID, Name, ContactEmail, Address, Representative, TaxCode) VALUES 
('CT001', 'Công ty Sáng Tạo', 'lienhe@congty.com', '123 Đường Công Nghệ', 'Nguyễn Văn An', 'MST123456');

INSERT INTO Company (CompanyID, Name, ContactEmail, Address, Representative, TaxCode) VALUES 
('CT002', 'Giải Pháp Sức Khỏe', 'info@giaiphap.com', '456 Đường Sức Khỏe', 'Trần Thị Bích', 'MST654321');

INSERT INTO Company (CompanyID, Name, ContactEmail, Address, Representative, TaxCode) VALUES 
('CT003', 'Công ty Phát Triển', 'contact@phattrien.com', '789 Đường Phát Triển', 'Lê Văn Cường', 'MST987654');

INSERT INTO Company (CompanyID, Name, ContactEmail, Address, Representative, TaxCode) VALUES 
('CT004', 'Công ty Công Nghệ', 'tech@congnghe.com', '101 Đường Công Nghệ', 'Phạm Thị Dương', 'MST123789');

INSERT INTO Company (CompanyID, Name, ContactEmail, Address, Representative, TaxCode) VALUES 
('CT005', 'Công ty Giải Trí', 'entertain@giaitri.com', '202 Đường Giải Trí', 'Vũ Văn Em', 'MST456123');

-- Insert data into RecruitmentInfo table
INSERT INTO RecruitmentInfo (InfoID, JobPosition, NumberOfVacancies, StartDate, EndDate, CandidateRequirements, CompanyID) VALUES 
('RI001', 'Kỹ Sư Phần Mềm', 5, TO_DATE('2023-07-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 'Cử nhân Công nghệ Thông tin', 'CT001');

INSERT INTO RecruitmentInfo (InfoID, JobPosition, NumberOfVacancies, StartDate, EndDate, CandidateRequirements, CompanyID) VALUES 
('RI002', 'Nhà Phân Tích Dữ Liệu', 3, TO_DATE('2023-08-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 'Kinh nghiệm với SQL và Python', 'CT002');

INSERT INTO RecruitmentInfo (InfoID, JobPosition, NumberOfVacancies, StartDate, EndDate, CandidateRequirements, CompanyID) VALUES 
('RI003', 'Quản Lý Dự Án', 2, TO_DATE('2023-09-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 'Kỹ năng quản lý dự án', 'CT003');

INSERT INTO RecruitmentInfo (InfoID, JobPosition, NumberOfVacancies, StartDate, EndDate, CandidateRequirements, CompanyID) VALUES 
('RI004', 'Nhân Viên Marketing', 4, TO_DATE('2023-10-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 'Kinh nghiệm trong marketing', 'CT004');

INSERT INTO RecruitmentInfo (InfoID, JobPosition, NumberOfVacancies, StartDate, EndDate, CandidateRequirements, CompanyID) VALUES 
('RI005', 'Nhân Viên Kế Toán', 3, TO_DATE('2023-11-01', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'), 'Kinh nghiệm với tài chính kế toán', 'CT005');

-- Insert data into AdvertisingRegistration table
INSERT INTO AdvertisingRegistration (AdRegistrationID, InfoID, AdvertisingMethod, AdvertisingPeriod) VALUES 
('AD001', 'RI001', 'Trực tuyến', TO_DATE('2023-07-01', 'YYYY-MM-DD'));

INSERT INTO AdvertisingRegistration (AdRegistrationID, InfoID, AdvertisingMethod, AdvertisingPeriod) VALUES 
('AD002', 'RI002', 'Báo chí', TO_DATE('2023-08-01', 'YYYY-MM-DD'));

INSERT INTO AdvertisingRegistration (AdRegistrationID, InfoID, AdvertisingMethod, AdvertisingPeriod) VALUES 
('AD003', 'RI003', 'Truyền hình', TO_DATE('2023-09-01', 'YYYY-MM-DD'));

INSERT INTO AdvertisingRegistration (AdRegistrationID, InfoID, AdvertisingMethod, AdvertisingPeriod) VALUES 
('AD004', 'RI004', 'Radio', TO_DATE('2023-10-01', 'YYYY-MM-DD'));

INSERT INTO AdvertisingRegistration (AdRegistrationID, InfoID, AdvertisingMethod, AdvertisingPeriod) VALUES 
('AD005', 'RI005', 'Bảng quảng cáo', TO_DATE('2023-11-01', 'YYYY-MM-DD'));

-- Insert data into Candidate table
INSERT INTO Candidate (CandidateID, FullName, PhoneNumber, BirthDate, Email) VALUES 
('UV001', 'Nguyễn Văn Cường', '0909123456', TO_DATE('1990-05-20', 'YYYY-MM-DD'), 'nguyenvanc@gmail.com');

INSERT INTO Candidate (CandidateID, FullName, PhoneNumber, BirthDate, Email) VALUES 
('UV002', 'Lê Thị Dung', '0909987654', TO_DATE('1985-11-30', 'YYYY-MM-DD'), 'lethid@example.com');

INSERT INTO Candidate (CandidateID, FullName, PhoneNumber, BirthDate, Email) VALUES 
('UV003', 'Trần Văn Em', '0911122334', TO_DATE('1988-07-15', 'YYYY-MM-DD'), 'tranvane@gmail.com');

INSERT INTO Candidate (CandidateID, FullName, PhoneNumber, BirthDate, Email) VALUES 
('UV004', 'Phạm Thị Nhi', '0912233445', TO_DATE('1992-10-22', 'YYYY-MM-DD'), 'phamthin@example.com');

INSERT INTO Candidate (CandidateID, FullName, PhoneNumber, BirthDate, Email) VALUES 
('UV005', 'Đỗ Văn Gìau', '0908765432', TO_DATE('1987-04-10', 'YYYY-MM-DD'), 'dovang@gmail.com');


-- Insert data into CandidateApplication table
INSERT INTO CandidateApplication (ApplicationID, InfoID, ApplicationDate, Status, PriorityLevel, Evaluation, CandidateID) VALUES 
('CA001', 'RI001', TO_DATE('2023-07-15', 'YYYY-MM-DD'), 'Đang chờ xử lý', 0, '','UV001');

INSERT INTO CandidateApplication (ApplicationID, InfoID, ApplicationDate, Status, PriorityLevel, Evaluation, CandidateID) VALUES 
('CA002', 'RI002', TO_DATE('2023-08-10', 'YYYY-MM-DD'), 'Đủ điều kiện', 2, '','UV002');

INSERT INTO CandidateApplication (ApplicationID, InfoID, ApplicationDate, Status, PriorityLevel, Evaluation, CandidateID) VALUES 
('CA003', 'RI003', TO_DATE('2023-09-20', 'YYYY-MM-DD'), 'Đang chờ xử lý', 0, '','UV003');

INSERT INTO CandidateApplication (ApplicationID, InfoID, ApplicationDate, Status, PriorityLevel, Evaluation, CandidateID) VALUES 
('CA004', 'RI004', TO_DATE('2023-10-15', 'YYYY-MM-DD'), 'Đang chờ xử lý', 0, '','UV004');

INSERT INTO CandidateApplication (ApplicationID, InfoID, ApplicationDate, Status, PriorityLevel, Evaluation, CandidateID) VALUES 
('CA005', 'RI005', TO_DATE('2023-11-25', 'YYYY-MM-DD'), 'Đủ điều kiện', 2, '','UV005');

-- Insert data into DocumentDetails table
INSERT INTO DocumentDetails (DetailID, ApplicationID, DocumentName, Type, Description) VALUES 
(1, 'CA001', 'Khám sức khỏe', 'Giấy tờ', 'Giấy khám sức khỏe của ứng viên.');

INSERT INTO DocumentDetails (DetailID, ApplicationID, DocumentName, Type, Description) VALUES 
(2, 'CA001', 'Chứng chỉ anh văn IELTS', 'Chứng chỉ IELTS', 'IELTS 7.0');

INSERT INTO DocumentDetails (DetailID, ApplicationID, DocumentName, Type, Description) VALUES 
(1, 'CA002', 'Khám sức khỏe', 'Giấy tờ', 'Giấy khám sức khỏe của ứng viên.');

INSERT INTO DocumentDetails (DetailID, ApplicationID, DocumentName, Type, Description) VALUES 
(1, 'CA003', 'Khám sức khỏe', 'Giấy tờ', 'Giấy khám sức khỏe của ứng viên.');

INSERT INTO DocumentDetails (DetailID, ApplicationID, DocumentName, Type, Description) VALUES 
(1, 'CA004', 'Khám sức khỏe', 'Giấy tờ', 'Giấy khám sức khỏe của ứng viên.');

INSERT INTO DocumentDetails (DetailID, ApplicationID, DocumentName, Type, Description) VALUES 
(1, 'CA005', 'Khám sức khỏe', 'Giấy tờ', 'Giấy khám sức khỏe của ứng viên.');

-- Insert data into Service table
INSERT INTO Service (ServiceID, ServiceName, ServicePrice) VALUES 
('DV001', 'Tư vấn', 1500.00);

INSERT INTO Service (ServiceID, ServiceName, ServicePrice) VALUES 
('DV002', 'Hỗ trợ', 800.00);

INSERT INTO Service (ServiceID, ServiceName, ServicePrice) VALUES 
('DV003', 'Kiểm tra hồ sơ', 2000.00);

INSERT INTO Service (ServiceID, ServiceName, ServicePrice) VALUES 
('DV004', 'Phát tờ rơi', 1000.00);

INSERT INTO Service (ServiceID, ServiceName, ServicePrice) VALUES 
('DV005', 'Thiết kế web quảng cáo', 3000.00);

-- Insert data into ServiceUsed table
INSERT INTO ServiceUsed (ServiceID, AdRegistrationID) VALUES 
('DV001', 'AD001');

INSERT INTO ServiceUsed (ServiceID, AdRegistrationID) VALUES 
('DV002', 'AD002');

INSERT INTO ServiceUsed (ServiceID, AdRegistrationID) VALUES 
('DV003', 'AD003');

INSERT INTO ServiceUsed (ServiceID, AdRegistrationID) VALUES 
('DV004', 'AD004');

INSERT INTO ServiceUsed (ServiceID, AdRegistrationID) VALUES 
('DV005', 'AD005');

-- Insert data into Invoice table
INSERT INTO Invoice (InvoiceID, AdRegistrationID, Amount, PaymentDate) VALUES 
('I0001', 'AD001', 1500.00, TO_DATE('2023-07-20', 'YYYY-MM-DD'));

INSERT INTO Invoice (InvoiceID, AdRegistrationID, Amount, PaymentDate) VALUES 
('I0002', 'AD002', 800.00, TO_DATE('2023-08-15', 'YYYY-MM-DD'));

INSERT INTO Invoice (InvoiceID, AdRegistrationID, Amount, PaymentDate) VALUES 
('I0003', 'AD003', 2000.00, TO_DATE('2023-09-25', 'YYYY-MM-DD'));

INSERT INTO Invoice (InvoiceID, AdRegistrationID, Amount, PaymentDate) VALUES 
('I0004', 'AD004', 5000.00, TO_DATE('2023-10-30', 'YYYY-MM-DD'));

INSERT INTO Invoice (InvoiceID, AdRegistrationID, Amount, PaymentDate) VALUES 
('I0005', 'AD005', 3000.00, TO_DATE('2023-11-20', 'YYYY-MM-DD'));

-- Insert data into PaymentDeadline table
--INSERT INTO PaymentDeadline (PaymentTimes, PaymentAmount, InvoiceID) VALUES 
--(1, 1500.00, 'I0001');


-- Insert data into Employee table
INSERT INTO Employee (EmployeeID, FullName, PhoneNumber, BirthDate, Email, Position) VALUES 
('E0001', 'Trần Văn Việt', '0911223344', TO_DATE('1978-03-12', 'YYYY-MM-DD'), 'tranvane@example.com', 'Quản lý');

INSERT INTO Employee (EmployeeID, FullName, PhoneNumber, BirthDate, Email, Position) VALUES 
('E0002', 'Phạm Thị Phươmg', '0988776655', TO_DATE('1982-07-22', 'YYYY-MM-DD'), 'phamthip@example.com', 'Nhà phân tích');

INSERT INTO Employee (EmployeeID, FullName, PhoneNumber, BirthDate, Email, Position) VALUES 
('E0003', 'Nguyễn Văn Gà', '0912233445', TO_DATE('1980-05-15', 'YYYY-MM-DD'), 'nguyenvang@example.com', 'Kỹ sư phần mềm');

INSERT INTO Employee (EmployeeID, FullName, PhoneNumber, BirthDate, Email, Position) VALUES 
('E0004', 'Lê Thị Hoa', '0913344556', TO_DATE('1985-09-30', 'YYYY-MM-DD'), 'lethih@example.com', 'Quản lý dự án');

INSERT INTO Employee (EmployeeID, FullName, PhoneNumber, BirthDate, Email, Position) VALUES 
('E0005', 'Vũ Văn Khang', '0914455667', TO_DATE('1975-12-25', 'YYYY-MM-DD'), 'vuvank@example.com', 'Trưởng phòng nhân sự');

-- Insert data into Strategy table
INSERT INTO Strategy (StrategyID, StrategyName, StrategyPolicy, EmployeeID) VALUES 
('ST001', 'Chiến lược tăng trưởng', 'Chi tiết chính sách cho chiến lược tăng trưởng.', 'E0001');

INSERT INTO Strategy (StrategyID, StrategyName, StrategyPolicy, EmployeeID) VALUES 
('ST002', 'Chiến lược giảm chi phí', 'Chi tiết chính sách cho chiến lược giảm chi phí.', 'E0002');

-- Insert data into Notification table
INSERT INTO Notification (NotificationID, Title, Content, EmployeeID, ApplicationID) VALUES 
('N0001', 'Nhắc nhở họp', 'Nhắc nhở về cuộc họp vào ngày 25-07-2023', 'E0001','CA001');

INSERT INTO Notification (NotificationID, Title, Content, EmployeeID, ApplicationID) VALUES 
('N0002', 'Hạn chót bổ sung hồ sơ', 'Hạn chót bổ sung là ngày 30-08-2024', 'E0002','CA001');

INSERT INTO Notification (NotificationID, Title, Content, EmployeeID, ApplicationID) VALUES 
('N0003', 'Thông báo tình trạng hồ sơ', 'Thông báo hồ sơ đã được xử lý', 'E0003','CA002');

INSERT INTO Notification (NotificationID, Title, Content, EmployeeID, ApplicationID) VALUES 
('N0004', 'Thông báo hồ sơ đạt yêu cầu', 'Hồ sơ đã đạt, bạn có thể vào vòng phỏng vấn', 'E0004','CA002');


CREATE OR REPLACE PROCEDURE USP_CREATE_USER_NHANVIEN
AS 
 CURSOR CUR IS 
 SELECT EMPLOYEEID, POSITION
 FROM Employee ; 
 STRSQL VARCHAR2(2000); 
 USR Employee.EMPLOYEEID%TYPE; 
 VAITRO Employee.POSITION%TYPE;
BEGIN 
 OPEN CUR; 
 LOOP 
 FETCH CUR INTO USR, VAITRO ; 
 EXIT WHEN CUR%NOTFOUND; 
 
 STRSQL := 'DROP USER ' || to_char(USR) || ' CASCADE'; 
 EXECUTE IMMEDIATE STRSQL;  
 STRSQL := 'CREATE USER ' || to_char(USR) || ' IDENTIFIED BY 1'; 
 EXECUTE IMMEDIATE STRSQL; 
 STRSQL := 'GRANT CREATE SESSION TO ' || to_char(USR); 
 EXECUTE IMMEDIATE STRSQL; 
 IF UPPER(VAITRO) = 'NHÂN VIÊN' THEN
    STRSQL := 'GRANT NHANVIEN TO ' || to_char(USR); 
 ELSIF UPPER(VAITRO) = 'BAN LÃNH ĐẠO' THEN
    STRSQL := 'GRANT BANLANHDAO TO ' || to_char(USR); 
 END IF;
 EXECUTE IMMEDIATE STRSQL; 
 DBMS_OUTPUT.PUT_LINE('Created user: ' || to_char(USR));
 END LOOP; 
 CLOSE CUR; 
END; 
/

CREATE OR REPLACE PROCEDURE USP_CREATE_USER_UNGVIEN
AS 
 CURSOR CUR IS 
 SELECT CandidateID
 FROM Candidate ; 
 STRSQL VARCHAR2(2000); 
 USR Candidate.CandidateID%TYPE; 
BEGIN 
 OPEN CUR; 
 LOOP 
 FETCH CUR INTO USR; 
 EXIT WHEN CUR%NOTFOUND; 
 STRSQL := 'DROP USER ' || to_char(USR) || ' CASCADE'; 
 EXECUTE IMMEDIATE STRSQL; 
 STRSQL := 'CREATE USER ' || to_char(USR) || ' IDENTIFIED BY 1'; 
 EXECUTE IMMEDIATE STRSQL; 
 STRSQL := 'GRANT CREATE SESSION, UNGVIEN TO ' || to_char(USR); 
 EXECUTE IMMEDIATE STRSQL; 
 DBMS_OUTPUT.PUT_LINE('Created user: ' || to_char(USR));
 END LOOP; 
 CLOSE CUR; 
END; 
/

CREATE OR REPLACE PROCEDURE USP_CREATE_USER_DOANHNGHIEP
AS 
 CURSOR CUR IS 
 SELECT CompanyID
 FROM Company ;
 STRSQL VARCHAR2(2000); 
 USR Company.CompanyID%TYPE; 
BEGIN 
 OPEN CUR; 
 LOOP 
 FETCH CUR INTO USR; 
 EXIT WHEN CUR%NOTFOUND; 
 STRSQL := 'DROP USER ' || to_char(USR) || ' CASCADE'; 
 EXECUTE IMMEDIATE STRSQL; 
 STRSQL := 'CREATE USER ' || to_char(USR) || ' IDENTIFIED BY 1'; 
 EXECUTE IMMEDIATE STRSQL; 
 STRSQL := 'GRANT CREATE SESSION, DOANHNGHIEP TO ' || to_char(USR); 
 EXECUTE IMMEDIATE STRSQL; 
 DBMS_OUTPUT.PUT_LINE('Created user: ' || to_char(USR));
 END LOOP; 
 CLOSE CUR; 
END; 
/

ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;
SET SERVEROUTPUT ON;
EXEC USP_CREATE_USER_NHANVIEN();
EXEC USP_CREATE_USER_UNGVIEN();
EXEC USP_CREATE_USER_DOANHNGHIEP();

ALTER SESSION SET "_ORACLE_SCRIPT" = FALSE;

