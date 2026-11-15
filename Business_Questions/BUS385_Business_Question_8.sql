USE HR_Attrition_Project;

SELECT
    CASE
        WHEN em.YearsAtCompany <= 2 THEN '0-2 Years'
        WHEN em.YearsAtCompany <= 5 THEN '3-5 Years'
        WHEN em.YearsAtCompany <= 10 THEN '6-10 Years'
        ELSE '11+ Years'
    END AS TenureGroup,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN e.Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft,
    ROUND(
        100.0 * SUM(CASE WHEN e.Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS AttritionRate
FROM employee e
JOIN employment em
    ON e.EmployeeNumber = em.EmployeeNumber
GROUP BY TenureGroup
ORDER BY MIN(em.YearsAtCompany);