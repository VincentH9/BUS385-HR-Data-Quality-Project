USE HR_Attrition_Project;

SELECT
    j.JobRoleName,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN e.Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft,
    ROUND(
        100.0 * SUM(CASE WHEN e.Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS AttritionRate
FROM employee e
JOIN employment em
    ON e.EmployeeNumber = em.EmployeeNumber
JOIN job_role j
    ON em.JobRoleID = j.JobRoleID
GROUP BY j.JobRoleName
ORDER BY AttritionRate DESC;