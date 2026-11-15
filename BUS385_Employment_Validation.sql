
USE HR_Attrition_Project;

SELECT
    EmployeeNumber,
    DepartmentID,
    JobRoleID,
    JobLevel,
    YearsAtCompany,
    YearsInCurrentRole,
    CASE
        WHEN DepartmentID IS NULL THEN 'Missing Department'
        WHEN JobRoleID IS NULL THEN 'Missing Job Role'
        WHEN JobLevel NOT BETWEEN 1 AND 5 THEN 'Invalid Job Level'
        WHEN YearsAtCompany < 0 THEN 'Invalid Years at Company'
        WHEN YearsInCurrentRole < 0 THEN 'Invalid Years in Role'
        WHEN YearsInCurrentRole > YearsAtCompany THEN 'Years in Role Exceeds Tenure'
        ELSE 'Valid'
    END AS DataQualityStatus
FROM Employment
WHERE DepartmentID IS NULL
   OR JobRoleID IS NULL
   OR JobLevel NOT BETWEEN 1 AND 5
   OR YearsAtCompany < 0
   OR YearsInCurrentRole < 0
   OR YearsInCurrentRole > YearsAtCompany;
