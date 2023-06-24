
SELECT
    w.firstname
    || ' '
    || w.lastname AS fullname,
    d.departmentname
FROM
         worker w
    JOIN assign a ON w.empid = a.empid
    JOIN dept   d ON w.departmentid = d.departmentid
WHERE
    a.projno = 1025;