
USE HR_Attrition_Project;

CREATE TABLE Employment (
    EmployeeNumber INT PRIMARY KEY,
    DepartmentID INT NOT NULL,
    JobRoleID INT NOT NULL,
    JobLevel INT,
    BusinessTravel VARCHAR(50),
    YearsWithCurrManager INT,
    YearsSinceLastPromotion INT,
    YearsInCurrentRole INT,
    YearsAtCompany INT,
    OverTime VARCHAR(3),

    CONSTRAINT fk_employment_employee
        FOREIGN KEY (EmployeeNumber)
        REFERENCES Employee(EmployeeNumber),

    CONSTRAINT fk_employment_department
        FOREIGN KEY (DepartmentID)
        REFERENCES Department(DepartmentID),

    CONSTRAINT fk_employment_jobrole
        FOREIGN KEY (JobRoleID)
        REFERENCES Job_Role(JobRoleID),

    CONSTRAINT chk_overtime
        CHECK (OverTime IN ('Yes', 'No')),

    CONSTRAINT chk_years_company
        CHECK (YearsAtCompany >= 0)
);

INSERT INTO Employment (
    EmployeeNumber,
    DepartmentID,
    JobRoleID,
    JobLevel,
    BusinessTravel,
    YearsWithCurrManager,
    YearsSinceLastPromotion,
    YearsInCurrentRole,
    YearsAtCompany,
    OverTime
)
SELECT
    r.EmployeeNumber,
    d.DepartmentID,
    j.JobRoleID,
    r.JobLevel,
    r.BusinessTravel,
    r.YearsWithCurrManager,
    r.YearsSinceLastPromotion,
    r.YearsInCurrentRole,
    r.YearsAtCompany,
    r.OverTime
FROM hr_attrition_raw r
JOIN Department d
    ON r.Department = d.DepartmentName
JOIN Job_Role j
    ON r.JobRole = j.JobRoleName;

SELECT COUNT(*) AS TotalEmploymentRecords
FROM Employment;
