
USE HR_Attrition_Project;

-- Creates the table used to track seeded error tests
CREATE TABLE IF NOT EXISTS seeded_error_tests (
    TestID INT NOT NULL AUTO_INCREMENT,
    SourceTable VARCHAR(100) DEFAULT NULL,
    ErrorType VARCHAR(100) DEFAULT NULL,
    ExpectedDetection VARCHAR(100) DEFAULT NULL,
    ActualDetection VARCHAR(100) DEFAULT NULL,
    Detected TINYINT(1) DEFAULT 0,
    TestDate TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (TestID)
) ENGINE=InnoDB
DEFAULT CHARSET=utf8mb4
COLLATE=utf8mb4_0900_ai_ci;
