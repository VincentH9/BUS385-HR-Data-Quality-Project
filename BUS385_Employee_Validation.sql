
USE HR_Attrition_Project;

SELECT
    EmployeeNumber,
    Age,
    Education,
    TotalWorkingYears,
    CASE
        WHEN Age < 18 OR Age > 100 THEN 'Invalid Age'
        WHEN Education NOT BETWEEN 1 AND 5 THEN 'Invalid Education'
        WHEN TotalWorkingYears < 0 THEN 'Invalid Work Experience'
        ELSE 'Valid'
    END AS DataQualityStatus
FROM Employee
WHERE Age < 18
   OR Age > 100
   OR Education NOT BETWEEN 1 AND 5
   OR TotalWorkingYears < 0;
