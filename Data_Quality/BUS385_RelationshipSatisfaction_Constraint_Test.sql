USE HR_Attrition_Project;

START TRANSACTION;

UPDATE employee_survey
SET RelationshipSatisfaction = 10
WHERE EmployeeNumber = 1;

ROLLBACK;

SELECT EmployeeNumber, RelationshipSatisfaction
FROM employee_survey
WHERE EmployeeNumber = 1;