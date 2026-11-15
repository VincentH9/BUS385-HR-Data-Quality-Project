
USE HR_Attrition_Project;

CREATE TABLE DataQuality_Log (
    LogID INT AUTO_INCREMENT PRIMARY KEY,
    EmployeeNumber INT,
    ErrorType VARCHAR(100) NOT NULL,
    ErrorDescription TEXT,
    SourceTable VARCHAR(100),
    DetectedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Status VARCHAR(30) DEFAULT 'Detected'
);

SELECT * FROM DataQuality_Log;
