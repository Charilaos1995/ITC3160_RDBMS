
SELECT
    w.firstname
    || ' '
    || w.lastname AS employeename,
    m.firstname
    || ' '
    || m.lastname AS departmentmanager
FROM
    worker  w
    LEFT JOIN dept    d ON w.departmentid = d.departmentid
    LEFT JOIN project p ON w.empid = p.projmgrid
    LEFT JOIN worker  m ON d.mgrid = m.empid
WHERE
    p.projno IS NULL;
