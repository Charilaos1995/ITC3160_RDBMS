
SELECT
    *
FROM
    project
WHERE
    budget = (
        SELECT
            MIN(budget)
        FROM
            project
    );