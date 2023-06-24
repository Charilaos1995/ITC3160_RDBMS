
SELECT
    a.empid,
    a.projno
FROM
    assign a
    LEFT JOIN (
        SELECT
            empid,
            projno
        FROM
            assign
        WHERE
            rating IS NOT NULL
    )      b ON a.empid = b.empid
           AND a.projno = b.projno
WHERE
    b.empid IS NULL;
