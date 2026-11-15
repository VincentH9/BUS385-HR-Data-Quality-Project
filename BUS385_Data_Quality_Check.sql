
USE HR_Attrition_Project;

SELECT
    COUNT(*) AS TotalEmployees,
    COUNT(DISTINCT EmployeeNumber) AS UniqueEmployees,
    SUM(EmployeeNumber IS NULL) AS MissingEmployeeIDs,
    SUM(MonthlyIncome IS NULL) AS MissingIncome,
    SUM(MonthlyIncome <= 0) AS InvalidIncome,
    SUM(JobSatisfaction NOT BETWEEN 1 AND 4) AS InvalidSatisfaction
FROM hr_attrition_raw;
