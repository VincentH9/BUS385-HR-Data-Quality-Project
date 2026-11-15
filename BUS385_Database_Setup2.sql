
USE HR_Attrition_Project;

SELECT COUNT(*) AS TotalEmployees
FROM hr_attrition_raw;

SELECT COUNT(*) AS TotalColumns
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'hr_attrition_project'
AND TABLE_NAME = 'hr_attrition_raw';

DESCRIBE hr_attrition_raw;
