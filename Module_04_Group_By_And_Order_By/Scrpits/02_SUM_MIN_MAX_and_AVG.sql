SELECT
    COUNT(STATION_DATA.snow_depth) AS recorded_snow_depth_count
FROM
    STATION_DATA;


SELECT
    STATION_DATA.month
  , AVG(STATION_DATA.temperature) AS avg_temperature
FROM
    STATION_DATA
WHERE
    year >= 2000
GROUP BY
    STATION_DATA.month;


SELECT
    STATION_DATA.month
  , ROUND(AVG(STATION_DATA.temperature), 2) AS avg_temperature
FROM
    STATION_DATA
WHERE
    year >= 2000
GROUP BY
    STATION_DATA.month;


SELECT
    STATION_DATA.year
, SUM(STATION_DATA.snow_depth) AS total_snow
FROM
    STATION_DATA
WHERE
    YEAR >= 2005
GROUP BY
    STATION_DATA.year;


SELECT
    STATION_DATA.year
  , ROUND(SUM(STATION_DATA.snow_depth), 2) AS total_snow
FROM
    STATION_DATA
WHERE
    YEAR >= 2005
GROUP BY
    STATION_DATA.year;


SELECT
    STATION_DATA.year
  , SUM(STATION_DATA.snow_depth)    AS total_snow
  , SUM(STATION_DATA.precipitation) AS total_precipitation
  , MAX(STATION_DATA.precipitation) AS max_precipitation
FROM
    STATION_DATA
WHERE
    YEAR >= 2005
GROUP BY
    STATION_DATA.year;