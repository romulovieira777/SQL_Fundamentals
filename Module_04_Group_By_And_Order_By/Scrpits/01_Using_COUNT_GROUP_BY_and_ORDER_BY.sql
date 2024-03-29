SELECT
    COUNT(*)
FROM
    STATION_DATA;


SELECT
    COUNT(*) AS RECORD_COUNT
FROM
    STATION_DATA
WHERE
    tornado = 1;


SELECT
    STATION_DATA.year
  , COUNT(*) AS RECORD_COUNT
FROM
    STATION_DATA
WHERE
    tornado = 1
GROUP BY
    STATION_DATA.year;


SELECT
    STATION_DATA.year
  , STATION_DATA.month
  , COUNT(*) AS RECORD_COUNT
FROM
    STATION_DATA
WHERE
    tornado = 1
GROUP BY
    STATION_DATA.year
  , STATION_DATA.month;


SELECT
    STATION_DATA.year
  , STATION_DATA.month
  , COUNT(*) AS RECORD_COUNT
FROM
    STATION_DATA
WHERE
    tornado = 1
GROUP BY
    1
  , 2;


SELECT
    STATION_DATA.year
  , STATION_DATA.month
  , COUNT(*) AS RECORD_COUNT
FROM
    STATION_DATA
WHERE
    tornado = 1
GROUP BY
    STATION_DATA.year
  , STATION_DATA.month
ORDER BY
    STATION_DATA.year
  , STATION_DATA.month;


SELECT
    STATION_DATA.year
  , STATION_DATA.month
  , COUNT(*) AS RECORD_COUNT
FROM
    STATION_DATA
WHERE
    tornado = 1
GROUP BY
    STATION_DATA.year
  , STATION_DATA.month
ORDER BY
    STATION_DATA.year DESC
    , STATION_DATA.month;