
ALTER TABLE project ADD numemployeesassigned NUMBER(4);

UPDATE project
SET
    numemployeesassigned = (
        SELECT
            COUNT(*)
        FROM
            assign
        WHERE
            assign.projno = project.projno
    );