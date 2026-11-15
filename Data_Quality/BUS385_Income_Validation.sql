
USE HR_Attrition_Project;

SELECT
    EmployeeNumber,
    MonthlyIncome,
    CASE
        WHEN MonthlyIncome IS NULL
            THEN 'Missing Income'
        WHEN MonthlyIncome <= 0
            THEN 'Invalid Income'
        ELSE 'Valid'
    END AS DataQualityStatus
FROM Compensation
WHERE MonthlyIncome IS NULL
   OR MonthlyIncome <= 0;
