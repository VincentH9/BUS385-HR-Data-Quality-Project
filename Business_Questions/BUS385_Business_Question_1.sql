USE HR_Attrition_Project;

SELECT
    d.DepartmentName,
    COUNT(em.EmployeeNumber) AS TotalEmployees
FROM employment em
JOIN department d
    ON em.DepartmentID = d.DepartmentID
GROUP BY d.DepartmentName
ORDER BY TotalEmployees DESC;