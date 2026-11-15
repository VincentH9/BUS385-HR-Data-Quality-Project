
USE HR_Attrition_Project;

CREATE TABLE Department (
    DepartmentID INT AUTO_INCREMENT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Job_Role (
    JobRoleID INT AUTO_INCREMENT PRIMARY KEY,
    JobRoleName VARCHAR(100) NOT NULL UNIQUE
);

INSERT INTO Department (DepartmentName)
SELECT DISTINCT Department
FROM hr_attrition_raw
WHERE Department IS NOT NULL;

INSERT INTO Job_Role (JobRoleName)
SELECT DISTINCT JobRole
FROM hr_attrition_raw
WHERE JobRole IS NOT NULL;

SELECT * FROM Department;
SELECT * FROM Job_Role;
