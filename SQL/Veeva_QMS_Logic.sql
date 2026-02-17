-- Phase 1: Data Engineering & Validation
-- Creating the Veeva Vault QMS simulated environment

CREATE TABLE Deviations (
    Record_ID TEXT PRIMARY KEY,
    Severity TEXT,
    Status TEXT,
    Source_Dept TEXT,
    Date_Opened DATE
);

-- Populating the System with sample records
INSERT INTO Deviations (Record_ID, Severity, Status, Source_Dept, Date_Opened)
VALUES 
('DEV-001', 'Critical', 'Open', 'Manufacturing', '2024-02-01'),
('DEV-002', 'Major', 'Closed', 'Lab', '2024-02-02'),
('DEV-003', 'Critical', 'Open', 'Packaging', '2024-02-05'),
('DEV-004', 'Minor', 'Open', 'Warehouse', '2024-02-07');

-- Risk Isolation Logic: Isolating High-Impact Risks for Managers
SELECT * FROM Deviations 
WHERE Severity = 'Critical' AND Status = 'Open';
