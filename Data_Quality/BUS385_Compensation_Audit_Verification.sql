USE HR_Attrition_Project;

START TRANSACTION;

UPDATE Compensation
SET MonthlyIncome = 6500
WHERE EmployeeNumber = 1;

SELECT *
FROM Audit_Trail
ORDER BY AuditID DESC
LIMIT 5;

ROLLBACK;

SELECT EmployeeNumber, MonthlyIncome
FROM Compensation
WHERE EmployeeNumber = 1;