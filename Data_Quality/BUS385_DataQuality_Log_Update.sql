
USE HR_Attrition_Project;

ALTER TABLE DataQuality_Log
ADD COLUMN seeded_test_id INT NULL;

DESCRIBE DataQuality_Log;
