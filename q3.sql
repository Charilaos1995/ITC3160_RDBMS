
SELECT
    empid,
    firstname
    || ' '
    || lastname AS fullname,
    salary / 4  AS threemonthsalary
FROM
    worker;