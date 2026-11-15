
USE HR_Attrition_Project;

SELECT
    e.EmployeeNumber,
    e.DepartmentID,
    e.JobRoleID
FROM Employment e
LEFT JOIN Employee emp
    ON e.EmployeeNumber = emp.EmployeeNumber
LEFT JOIN Department d
    ON e.DepartmentID = d.DepartmentID
LEFT JOIN Job_Role j
    ON e.JobRoleID = j.JobRoleID
WHERE emp.EmployeeNumber IS NULL
   OR d.DepartmentID IS NULL
   OR j.JobRoleID IS NULL;
