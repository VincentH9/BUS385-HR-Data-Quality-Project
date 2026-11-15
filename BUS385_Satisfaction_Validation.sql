
USE HR_Attrition_Project;

SELECT
    EmployeeNumber,
    JobSatisfaction,
    CASE
        WHEN JobSatisfaction IS NULL
            THEN 'Missing Satisfaction'
        WHEN JobSatisfaction NOT BETWEEN 1 AND 4
            THEN 'Invalid Satisfaction'
        ELSE 'Valid'
    END AS DataQualityStatus
FROM Employee_Survey
WHERE JobSatisfaction IS NULL
   OR JobSatisfaction NOT BETWEEN 1 AND 4;
