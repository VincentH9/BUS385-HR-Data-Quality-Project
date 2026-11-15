USE HR_Attrition_Project;

START TRANSACTION;

UPDATE employee_survey
SET JobSatisfaction = 10
WHERE EmployeeNumber = 1;

ROLLBACK;

SELECT EmployeeNumber, JobSatisfaction
FROM employee_survey
WHERE EmployeeNumber = 1;