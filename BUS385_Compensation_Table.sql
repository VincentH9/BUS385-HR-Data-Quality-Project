
USE HR_Attrition_Project;

CREATE TABLE Compensation (
    EmployeeNumber INT PRIMARY KEY,
    HourlyRate INT,
    MonthlyRate INT,
    DailyRate INT,
    StockOptionLevel INT,
    PercentSalaryHike INT,
    MonthlyIncome INT NOT NULL,

    CONSTRAINT fk_compensation_employee
        FOREIGN KEY (EmployeeNumber)
        REFERENCES Employee(EmployeeNumber),

    CONSTRAINT chk_monthly_income
        CHECK (MonthlyIncome > 0),

    CONSTRAINT chk_hourly_rate
        CHECK (HourlyRate > 0),

    CONSTRAINT chk_stock_option
        CHECK (StockOptionLevel >= 0)
);

INSERT INTO Compensation (
    EmployeeNumber,
    HourlyRate,
    MonthlyRate,
    DailyRate,
    StockOptionLevel,
    PercentSalaryHike,
    MonthlyIncome
)
SELECT
    EmployeeNumber,
    HourlyRate,
    MonthlyRate,
    DailyRate,
    StockOptionLevel,
    PercentSalaryHike,
    MonthlyIncome
FROM hr_attrition_raw;

SELECT COUNT(*) AS TotalCompensationRecords
FROM Compensation;
