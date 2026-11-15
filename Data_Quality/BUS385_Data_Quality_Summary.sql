USE HR_Attrition_Project;

SELECT 'Employee' AS TableName, COUNT(*) AS TotalRecords
FROM employee
UNION ALL
SELECT 'Employment', COUNT(*) FROM employment
UNION ALL
SELECT 'Compensation', COUNT(*) FROM compensation
UNION ALL
SELECT 'Employee Survey', COUNT(*) FROM employee_survey;

SELECT
    COUNT(*) AS TotalTests,
    SUM(Detected) AS DetectedErrors,
    ROUND(100.0 * SUM(Detected) / COUNT(*), 2) AS DetectionRate
FROM Seeded_Error_Tests;