USE HR_Attrition_Project;

START TRANSACTION;

UPDATE Employment
SET DepartmentID = 99999
WHERE EmployeeNumber = 1;

ROLLBACK;

SELECT EmployeeNumber, DepartmentID
FROM Employment
WHERE EmployeeNumber = 1;