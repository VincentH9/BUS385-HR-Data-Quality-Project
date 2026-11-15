USE HR_Attrition_Project;

DELIMITER $$

DROP PROCEDURE IF EXISTS Test_Invalid_Income$$

CREATE PROCEDURE Test_Invalid_Income()
BEGIN
    DECLARE error_detected BOOLEAN DEFAULT FALSE;

    DECLARE CONTINUE HANDLER FOR SQLEXCEPTION
        SET error_detected = TRUE;

    START TRANSACTION;

    UPDATE compensation
    SET MonthlyIncome = -100
    WHERE EmployeeNumber = 1;

    ROLLBACK;

    SELECT
        'Invalid Monthly Income' AS TestName,
        error_detected AS Detected;
END$$

DELIMITER ;