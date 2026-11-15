USE HR_Attrition_Project;

START TRANSACTION;

UPDATE Employee
SET Age = -5
WHERE EmployeeNumber = 1;

ROLLBACK;

SELECT EmployeeNumber, Age
FROM Employee
WHERE EmployeeNumber = 1;