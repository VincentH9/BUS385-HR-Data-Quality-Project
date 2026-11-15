
USE HR_Attrition_Project;

SELECT
    (SELECT COUNT(*) FROM Employee) AS TotalEmployees,
    (SELECT COUNT(*) FROM Employment) AS TotalEmploymentRecords,
    (SELECT COUNT(*) FROM Compensation) AS TotalCompensationRecords,
    (SELECT COUNT(*) FROM Employee_Survey) AS TotalSurveyRecords,
    (SELECT COUNT(*) FROM DataQuality_Log) AS LoggedDataQualityIssues;
