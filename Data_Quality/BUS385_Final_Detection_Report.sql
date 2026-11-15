USE HR_Attrition_Project;

SELECT
    COUNT(*) AS TotalTests,
    SUM(Detected) AS TestsDetected,
    COUNT(*) - SUM(Detected) AS TestsFailed,
    ROUND(SUM(Detected) * 100.0 / COUNT(*), 2) AS DetectionRate,
    CASE
        WHEN SUM(Detected) * 100.0 / COUNT(*) >= 95
        THEN 'TARGET MET'
        ELSE 'BELOW TARGET'
    END AS ProjectStatus
FROM Seeded_Error_Tests;