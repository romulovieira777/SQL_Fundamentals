SELECT
    *
FROM
    STATION_DATA;


SELECT
    STATION_DATA.report_code
  , STATION_DATA.year
  , STATION_DATA.month
  , STATION_DATA.day
  , STATION_DATA.wind_speed
  , CASE
      WHEN STATION_DATA.wind_speed >= 40 THEN 'HIGH'
      WHEN STATION_DATA.wind_speed >= 30 THEN 'MODERATE'
      ELSE 'LOW'
  END AS wind_severity
FROM
    STATION_DATA;


SELECT
    STATION_DATA.report_code
  , STATION_DATA.year
  , STATION_DATA.month
  , STATION_DATA.day
  , STATION_DATA.wind_speed
  , CASE
      WHEN STATION_DATA.wind_speed >= 40 THEN 'HIGH'
      WHEN STATION_DATA.wind_speed >= 30 AND wind_speed < 40 THEN 'MODERATE'
      ELSE 'LOW'
  END AS wind_severity
FROM
    STATION_DATA;


SELECT
    CASE
      WHEN STATION_DATA.wind_speed >= 40 THEN 'HIGH'
      WHEN STATION_DATA.wind_speed >= 30 THEN 'MODERATE'
      ELSE 'LOW'
    END AS wind_severity
  , COUNT(*) AS record_count
FROM
    STATION_DATA
GROUP BY
    wind_severity;