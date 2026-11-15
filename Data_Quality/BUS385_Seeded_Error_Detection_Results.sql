USE HR_Attrition_Project;

SELECT
    COUNT(*) AS TotalTests,
    SUM(Detected) AS DetectedErrors,
    ROUND(100.0 * SUM(Detected) / COUNT(*), 2) AS DetectionRate
FROM Seeded_Error_Tests;