
USE HR_Attrition_Project;

CREATE TABLE Employee_Survey (
    EmployeeNumber INT PRIMARY KEY,
    JobInvolvement INT,
    PerformanceRating INT,
    WorkLifeBalance INT,
    RelationshipSatisfaction INT,
    JobSatisfaction INT,
    EnvironmentSatisfaction INT,
    TrainingTimesLastYear INT,

    CONSTRAINT fk_survey_employee
        FOREIGN KEY (EmployeeNumber)
        REFERENCES Employee(EmployeeNumber),

    CONSTRAINT chk_job_satisfaction
        CHECK (JobSatisfaction BETWEEN 1 AND 4),

    CONSTRAINT chk_work_life_balance
        CHECK (WorkLifeBalance BETWEEN 1 AND 4),

    CONSTRAINT chk_relationship_satisfaction
        CHECK (RelationshipSatisfaction BETWEEN 1 AND 4),

    CONSTRAINT chk_environment_satisfaction
        CHECK (EnvironmentSatisfaction BETWEEN 1 AND 4),

    CONSTRAINT chk_job_involvement
        CHECK (JobInvolvement BETWEEN 1 AND 4),

    CONSTRAINT chk_training_times
        CHECK (TrainingTimesLastYear >= 0)
);

INSERT INTO Employee_Survey (
    EmployeeNumber,
    JobInvolvement,
    PerformanceRating,
    WorkLifeBalance,
    RelationshipSatisfaction,
    JobSatisfaction,
    EnvironmentSatisfaction,
    TrainingTimesLastYear
)
SELECT
    EmployeeNumber,
    JobInvolvement,
    PerformanceRating,
    WorkLifeBalance,
    RelationshipSatisfaction,
    JobSatisfaction,
    EnvironmentSatisfaction,
    TrainingTimesLastYear
FROM hr_attrition_raw;

SELECT COUNT(*) AS TotalSurveyRecords
FROM Employee_Survey;
