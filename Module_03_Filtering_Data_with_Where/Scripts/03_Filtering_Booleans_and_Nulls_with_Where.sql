SELECT
    *
FROM
    STATION_DATA;


SELECT
    *
FROM
    STATION_DATA
WHERE
    tornado = 1 AND hail = 1;


SELECT
    *
FROM
    STATION_DATA
WHERE
    tornado = TRUE AND hail = TRUE;


SELECT
    *
FROM
    STATION_DATA
WHERE
    tornado AND hail;


SELECT
    *
FROM
    STATION_DATA
WHERE
    tornado = 0 AND hail = 1;


SELECT
    *
FROM
    STATION_DATA
WHERE NOT
    tornado AND hail;


SELECT
    *
FROM
    STATION_DATA
WHERE
    tornado = 0 AND hail = 0;


SELECT
    *
FROM
    STATION_DATA;


SELECT
    *
FROM
    STATION_DATA
WHERE
    snow_depth IS NULL;


SELECT
    *
FROM
    STATION_DATA
WHERE
    snow_depth IS NOT NULL;


SELECT
    *
FROM
    STATION_DATA
WHERE
    precipitation <= 0.5;


SELECT
    *
FROM
    STATION_DATA
WHERE
    precipitation IS NULL OR precipitation <= 0.5;


SELECT
    *
FROM
    STATION_DATA
WHERE
    COALESCE(precipitation, 0) <= 0.5;


SELECT
    *
FROM
    STATION_DATA
WHERE
    COALESCE(precipitation, 'N/A') <= 0.5;