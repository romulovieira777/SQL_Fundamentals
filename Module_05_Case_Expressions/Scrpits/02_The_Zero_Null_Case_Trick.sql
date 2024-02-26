SELECT
    STATION_DATA.year
  , STATION_DATA.month
  , SUM(STATION_DATA.precipitation) AS total_precipitation
FROM
    STATION_DATA
WHERE
    STATION_DATA.tornado = 1
AND
    STATION_DATA.year >= 1990
GROUP BY
    STATION_DATA.year
  , STATION_DATA.month;


SELECT
    STATION_DATA.year
  , STATION_DATA.month
  , SUM(CASE WHEN STATION_DATA.tornado = 1 THEN STATION_DATA.precipitation ELSE 0 END) AS total_precipitation
  , SUM(CASE WHEN STATION_DATA.tornado = 0 THEN STATION_DATA.precipitation ELSE 0 END) AS non_tornado_precipitation
FROM
    STATION_DATA
WHERE
    STATION_DATA.year >= 1990
GROUP BY
    STATION_DATA.year
  , STATION_DATA.month;


SELECT
    STATION_DATA.year
  , STATION_DATA.month
  , MAX(CASE WHEN STATION_DATA.tornado = 1 THEN STATION_DATA.precipitation ELSE NULL END) AS max_tornado_precipitation
  , MAX(CASE WHEN STATION_DATA.tornado = 0 THEN STATION_DATA.precipitation ELSE NULL END) AS max_non_tornado_precipitation
FROM
    STATION_DATA
WHERE
    STATION_DATA.year >= 1990
GROUP BY
    STATION_DATA.year
  , STATION_DATA.month;