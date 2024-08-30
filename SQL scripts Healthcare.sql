-- CREATE DATABASE healthcare;
-- USE healthcare;
-- CREATE TABLE Patients (
 --   PatientID INT PRIMARY KEY,
 --   Name VARCHAR(100),
--    Age INT,
--    Gender VARCHAR(10),
--    Location VARCHAR(100)
-- );

-- CREATE TABLE HealthcareFacilities (
--    Name VARCHAR(100),
--    Type VARCHAR(50),
--    Location VARCHAR(100),
 --   Capacity INT
-- );

-- CREATE TABLE HealthcareProfessionals (
--    ProfessionalID INT PRIMARY KEY,
--    Name VARCHAR(100),
--    Specialty VARCHAR(50),
--    FacilityID INT,
-- FOREIGN KEY (FacilityID) REFERENCES HealthcareFacilities(FacilityID)
-- );
-- INSERT INTO Patients (PatientID, Name, Age, Gender, Location) VALUES
-- (1, 'John Doe', 30, 'Male', 'Rural Area A'),
-- (2, 'Jane Smith', 25, 'Female', 'Rural Area B');

-- INSERT INTO HealthcareFacilities (FacilityID, Name, Type, Location, Capacity) VALUES
-- (1, 'Community Clinic A', 'Clinic', 'Rural Area A', 20),
-- (2, 'General Hospital B', 'Hospital', 'Rural Area B', 100);

-- INSERT INTO HealthcareProfessionals (ProfessionalID, Name, Specialty, FacilityID) VALUES
-- (1, 'Dr. Alice', 'General Practitioner', 1),
-- (2, 'Dr. Bob', 'Pediatrician', 2);

-- INSERT INTO Appointments (AppointmentID, PatientID, ProfessionalID, Date, Time) VALUES
-- (1, 1, 1, '2024-09-01', '09:00'),
-- (2, 2, 2, '2024-09-02', '10:00');
 -- Retrieve all patients:
 -- SELECT * FROM Patients;
 
 -- To retrieve patient details along with their appointments
 
 -- SELECT Patients.Name, Patients.Age, Appointments.Date, Appointments.Time
-- FROM Patients
-- JOIN Appointments ON Patients.PatientID = Appointments.PatientID;

-- To analyze the number of appointments per healthcare facility
-- SELECT HealthcareFacilities.Name, COUNT(Appointments.AppointmentID) AS TotalAppointments
-- FROM HealthcareFacilities
-- LEFT JOIN HealthcareProfessionals ON HealthcareFacilities.FacilityID = HealthcareProfessionals.FacilityID
-- LEFT JOIN Appointments ON HealthcareProfessionals.ProfessionalID = Appointments.ProfessionalID
-- GROUP BY HealthcareFacilities.Name;



