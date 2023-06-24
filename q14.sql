
SELECT
    p.projno             AS projectnumber,
    COUNT(a.empid)       AS numworkers,
    SUM(a.hoursassigned) AS totalhours
FROM
    project p
    LEFT JOIN assign  a ON p.projno = a.projno
GROUP BY
    p.projno;
