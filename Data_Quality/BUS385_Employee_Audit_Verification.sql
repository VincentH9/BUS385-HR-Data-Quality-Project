USE HR_Attrition_Project;

START TRANSACTION;

UPDATE Employee
SET MaritalStatus = 'Single'
WHERE EmployeeNumber = 2
  AND MaritalStatus = 'Married';

SELECT *
FROM Audit_Trail
ORDER BY AuditID DESC
LIMIT 5;

ROLLBACK;