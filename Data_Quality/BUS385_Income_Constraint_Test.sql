USE HR_Attrition_Project;

START TRANSACTION;

UPDATE Compensation
SET MonthlyIncome = -100
WHERE EmployeeNumber = 1;

ROLLBACK;

SELECT EmployeeNumber, MonthlyIncome
FROM Compensation
WHERE EmployeeNumber = 1;