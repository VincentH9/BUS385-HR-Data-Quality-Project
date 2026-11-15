
USE HR_Attrition_Project;

SELECT
    EmployeeNumber,
    COUNT(*) AS DuplicateCount
FROM Employee
GROUP BY EmployeeNumber
HAVING COUNT(*) > 1;
