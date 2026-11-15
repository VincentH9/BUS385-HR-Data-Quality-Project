
USE HR_Attrition_Project;

DELIMITER $$

CREATE TRIGGER trg_employee_audit
AFTER UPDATE ON Employee
FOR EACH ROW
BEGIN
    IF NOT (OLD.MaritalStatus <=> NEW.MaritalStatus) THEN
        INSERT INTO Audit_Trail (
            TableName, RecordID, ActionType,
            ColumnName, OldValue, NewValue, ChangedBy
        )
        VALUES (
            'Employee', NEW.EmployeeNumber, 'UPDATE',
            'MaritalStatus', OLD.MaritalStatus,
            NEW.MaritalStatus, CURRENT_USER()
        );
    END IF;

    IF NOT (OLD.Education <=> NEW.Education) THEN
        INSERT INTO Audit_Trail (
            TableName, RecordID, ActionType,
            ColumnName, OldValue, NewValue, ChangedBy
        )
        VALUES (
            'Employee', NEW.EmployeeNumber, 'UPDATE',
            'Education',
            CAST(OLD.Education AS CHAR),
            CAST(NEW.Education AS CHAR),
            CURRENT_USER()
        );
    END IF;
END$$

DELIMITER ;
