
USE HR_Attrition_Project;

CREATE TABLE Audit_Trail (
    AuditID INT AUTO_INCREMENT PRIMARY KEY,
    TableName VARCHAR(100) NOT NULL,
    RecordID INT NOT NULL,
    ActionType VARCHAR(20) NOT NULL,
    ColumnName VARCHAR(100),
    OldValue TEXT,
    NewValue TEXT,
    ChangedBy VARCHAR(100),
    ChangedAt TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

SELECT * FROM Audit_Trail;
