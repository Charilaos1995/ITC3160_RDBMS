
CREATE OR REPLACE TRIGGER update_numemployeesassigned AFTER
    INSERT OR UPDATE OR DELETE ON assign
    FOR EACH ROW
BEGIN
    IF inserting OR updating THEN
        UPDATE project
        SET
            numemployeesassigned = (
                SELECT
                    COUNT(*)
                FROM
                    assign
                WHERE
                    assign.projno = :new.projno
            )
        WHERE
            project.projno = :new.projno;

    ELSE
        UPDATE project
        SET
            numemployeesassigned = (
                SELECT
                    COUNT(*)
                FROM
                    assign
                WHERE
                    assign.projno = :old.projno
            )
        WHERE
            project.projno = :old.projno;

    END IF;
END;
/