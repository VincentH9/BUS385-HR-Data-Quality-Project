USE HR_Attrition_Project;

START TRANSACTION;

UPDATE employee_survey
SET WorkLifeBalance = 9
WHERE EmployeeNumber = 1;

ROLLBACK;