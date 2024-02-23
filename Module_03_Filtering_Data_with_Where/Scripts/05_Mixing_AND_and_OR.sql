SELECT
    *
FROM
    STATION_DATA;


SELECT
    *
FROM
    STATION_DATA
WHERE
    rain = 1 AND temperature <= 32
OR
    snow_depth >0;


SELECT
    *
FROM
    STATION_DATA
WHERE
    (rain = 1 AND temperature <= 32)
OR
    snow_depth > 0;