
SELECT
    projno,
    projname,
    startdate
FROM
    project
WHERE
    startdate IN (
        SELECT
            startdate
        FROM
            project
        GROUP BY
            startdate
        HAVING
            COUNT(*) > 1
    )
ORDER BY
    startdate;