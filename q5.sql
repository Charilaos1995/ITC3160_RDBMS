
SELECT
    firstname
    || ' '
    || lastname AS fullname
FROM
    worker
WHERE
    salary = (
        SELECT
            MIN(salary)
        FROM
            worker
        WHERE
            departmentid = 1
    );