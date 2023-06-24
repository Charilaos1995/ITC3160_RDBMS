
-- Insert new workers
INSERT INTO worker (
    empid,
    lastname,
    firstname,
    departmentid
) VALUES (
    107,
    'Giannopoulos',
    'Charilaos',
    (
        SELECT
            departmentid
        FROM
            dept
        WHERE
            departmentname = 'Research'
    )
);

INSERT INTO worker (
    empid,
    lastname,
    firstname,
    departmentid
) VALUES (
    106,
    'Zarkadis',
    'Konstantinos',
    (
        SELECT
            departmentid
        FROM
            dept
        WHERE
            departmentname = 'Research'
    )
);

-- Assign workers to projects
INSERT INTO assign (
    projno,
    empid
) VALUES (
    1005,
    107
);

INSERT INTO assign (
    projno,
    empid
) VALUES (
    1005,
    106
);

INSERT INTO assign (
    projno,
    empid
) VALUES (
    1025,
    107
);

INSERT INTO assign (
    projno,
    empid
) VALUES (
    1025,
    106
);