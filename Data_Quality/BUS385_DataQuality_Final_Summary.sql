
USE HR_Attrition_Project;

SELECT
    'Employee Records' AS CheckType,
    COUNT(*) AS TotalRecords
FROM Employee

UNION ALL

SELECT
    'Employment Records',
    COUNT(*)
FROM Employment

UNION ALL

SELECT
    'Compensation Records',
    COUNT(*)
FROM Compensation

UNION ALL

SELECT
    'Survey Records',
    COUNT(*)
FROM Employee_Survey

UNION ALL

SELECT
    'Logged Quality Issues',
    COUNT(*)
FROM DataQuality_Log;
