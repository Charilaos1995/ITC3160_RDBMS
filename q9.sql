
CREATE VIEW projectworkers AS
    SELECT
        p.projno,
        p.projname,
        w.empid,
        w.firstname,
        w.lastname
    FROM
             project p
        JOIN assign a ON p.projno = a.projno
        JOIN worker w ON a.empid = w.empid;

SELECT
    *
FROM
    projectworkers;