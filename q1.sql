
SELECT
    firstname,
    lastname
FROM
    worker
WHERE
    departmentid IN (
        SELECT
            departmentid
        FROM
            dept
        WHERE
            departmentname = 'Research'
    );