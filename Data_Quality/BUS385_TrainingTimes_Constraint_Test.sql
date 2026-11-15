USE HR_Attrition_Project;

START TRANSACTION;

UPDATE employee_survey
SET TrainingTimesLastYear = -3
WHERE EmployeeNumber = 1;

ROLLBACK;

SELECT EmployeeNumber, TrainingTimesLastYear
FROM employee_survey
WHERE EmployeeNumber = 1;