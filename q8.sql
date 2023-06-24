
SELECT
    w.firstname
    || ' '
    || w.lastname AS fullname,
    a.rating
FROM
         worker w
    JOIN assign  a ON w.empid = a.empid
    JOIN project p ON a.projno = p.projno
    JOIN worker  wr ON p.projmgrid = wr.empid
WHERE
        wr.firstname = 'Helen'
    AND wr.lastname = 'Smith'
ORDER BY
    fullname ASC;