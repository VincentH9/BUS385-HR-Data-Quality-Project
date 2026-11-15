USE HR_Attrition_Project;

SELECT
    em.OverTime,
    s.JobSatisfaction,
    COUNT(*) AS TotalEmployees,
    SUM(CASE WHEN e.Attrition = 'Yes' THEN 1 ELSE 0 END) AS EmployeesLeft,
    ROUND(
        100.0 * SUM(CASE WHEN e.Attrition = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*), 2
    ) AS AttritionRate
FROM employee e
JOIN employment em
    ON e.EmployeeNumber = em.EmployeeNumber
JOIN employee_survey s
    ON e.EmployeeNumber = s.EmployeeNumber
GROUP BY em.OverTime, s.JobSatisfaction
ORDER BY AttritionRate DESC;