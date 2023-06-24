
-- Add 'status' field to the Project table
ALTER TABLE project ADD status VARCHAR2(20);

-- Update the status for the projects
UPDATE project
SET
    status = 'active'
WHERE
    projno = 1019;

UPDATE project
SET
    status = 'active'
WHERE
    projno = 1042;

UPDATE project
SET
    status = 'active'
WHERE
    projno = 1032;

UPDATE project
SET
    status = 'completed'
WHERE
    projno = 1001;

UPDATE project
SET
    status = 'cancelled'
WHERE
    projno = 1031;

-- Display list of all 'active' projects
SELECT
    projno,
    projname,
    status
FROM
    project
WHERE
    status = 'active';