
USE HR_Attrition_Project;

START TRANSACTION;

UPDATE Compensation
SET MonthlyIncome = MonthlyIncome + 100
WHERE EmployeeNumber = 1;

SELECT *
FROM Audit_Trail
WHERE RecordID = 1
ORDER BY AuditID DESC;

ROLLBACK;
