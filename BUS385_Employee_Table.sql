
USE HR_Attrition_Project;

CREATE TABLE Employee (
    EmployeeNumber INT PRIMARY KEY,
    Age INT NOT NULL,
    Gender VARCHAR(20),
    MaritalStatus VARCHAR(30),
    Education INT,
    EducationField VARCHAR(100),
    NumCompaniesWorked INT,
    TotalWorkingYears INT,
    DistanceFromHome INT,
    Attrition VARCHAR(3) NOT NULL,
    CONSTRAINT chk_employee_age CHECK (Age >= 18),
    CONSTRAINT chk_attrition CHECK (Attrition IN ('Yes', 'No'))
);

INSERT INTO Employee (
    EmployeeNumber,
    Age,
    Gender,
    MaritalStatus,
    Education,
    EducationField,
    NumCompaniesWorked,
    TotalWorkingYears,
    DistanceFromHome,
    Attrition
)
SELECT
    EmployeeNumber,
    Age,
    Gender,
    MaritalStatus,
    Education,
    EducationField,
    NumCompaniesWorked,
    TotalWorkingYears,
    DistanceFromHome,
    Attrition
FROM hr_attrition_raw;

SELECT COUNT(*) AS TotalEmployees
FROM Employee;
