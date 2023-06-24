
SELECT
    lastname,
    firstname
FROM
    worker
WHERE
    empid IN (
        SELECT
            empid
        FROM
            assign
        WHERE
            projno = 1041
    )
ORDER BY
    lastname ASC;