
SELECT
    v.projno,
    v.empid,
    v.firstname,
    v.lastname
FROM
         projectworkers v
    JOIN project p ON v.projno = p.projno
WHERE
    p.startdate > TO_DATE('01-01-2023', 'DD-MM-YYYY');
