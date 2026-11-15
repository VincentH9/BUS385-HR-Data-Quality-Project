
USE HR_Attrition_Project;

DELIMITER $$

CREATE TRIGGER trg_compensation_audit
AFTER UPDATE ON Compensation
FOR EACH ROW
BEGIN
    IF NOT (OLD.MonthlyIncome <=> NEW.MonthlyIncome) THEN
        INSERT INTO Audit_Trail (
            TableName,
            RecordID,
            ActionType,
            ColumnName,
            OldValue,
            NewValue,
            ChangedBy
        )
        VALUES (
            'Compensation',
            NEW.EmployeeNumber,
            'UPDATE',
            'MonthlyIncome',
            CAST(OLD.MonthlyIncome AS CHAR),
            CAST(NEW.MonthlyIncome AS CHAR),
            CURRENT_USER()
        );
    END IF;
END$$

DELIMITER ;
