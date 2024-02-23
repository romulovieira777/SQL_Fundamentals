SELECT
    *
FROM
    STATION_DATA
WHERE
    report_code = '513A63';


SELECT
    *
FROM
    STATION_DATA
WHERE
    report_code IN ('513A63', '1F8A78', 'EF616A');


SELECT
    *
FROM
    STATION_DATA
WHERE
    LENGTH(report_code) != 6;


SELECT
    *
FROM
    STATION_DATA
WHERE
    report_code LIKE 'A%';


SELECT
    *
FROM
    STATION_DATA
WHERE
    report_code LIKE 'B_C%';


SELECT
    *
FROM
    STATION_DATA
WHERE
    report_code REGEXP '^A.*$';