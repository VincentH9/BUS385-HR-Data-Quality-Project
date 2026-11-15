USE HR_Attrition_Project;

SELECT
    d.DepartmentName,
    ROUND(AVG(c.MonthlyIncome), 2) AS AverageMonthlyIncome
FROM employment em
JOIN department d
    ON em.DepartmentID = d.DepartmentID
JOIN compensation c
    ON em.EmployeeNumber = c.EmployeeNumber
GROUP BY d.DepartmentName
ORDER BY AverageMonthlyIncome DESC;