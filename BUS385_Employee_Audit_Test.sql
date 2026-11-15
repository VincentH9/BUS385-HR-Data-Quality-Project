
USE HR_Attrition_Project;

START TRANSACTION;

UPDATE Employee
SET Education = Education + 1
WHERE EmployeeNumber = 1
  AND Education BETWEEN 1 AND 4;

SELECT *
FROM Audit_Trail
WHERE TableName = 'Employee'
AND RecordID = 1
ORDER BY AuditID DESC;

ROLLBACK;
