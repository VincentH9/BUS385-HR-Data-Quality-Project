USE HR_Attrition_Project;

START TRANSACTION;

UPDATE employee_survey
SET JobInvolvement = 10
WHERE EmployeeNumber = 1;

ROLLBACK;

SELECT EmployeeNumber, JobInvolvement
FROM employee_survey
WHERE EmployeeNumber = 1;