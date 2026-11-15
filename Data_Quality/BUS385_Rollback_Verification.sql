
USE HR_Attrition_Project;

SELECT EmployeeNumber, MonthlyIncome
FROM Compensation
WHERE EmployeeNumber = 1;

SELECT COUNT(*) AS RemainingAuditRecords
FROM Audit_Trail
WHERE RecordID = 1;