SELECT
    *
FROM
    CUSTOMER_ORDER;


SELECT
    *
FROM
    CUSTOMER_ORDER
WHERE
    SHIP_DATE < '2015-05-21';


SELECT
    DATE('NOW');


SELECT
    DATE('NOW', '-1 day');


SELECT
    DATE('NOW', '+3 month', '-1 day');


SELECT
    DATE('2015-12-07', '+3 month', '-1 day');


SELECT
    '16:31';


SELECT
    '16:31' < '08:31';


SELECT
    TIME('NOW');


SELECT
    TIME('16:31', '+1 MINUTE');


SELECT
    '2015-12-13 16:04:11';


SELECT
    DATETIME('2015-12-13 16:04:11', '-1 DAY', '+3 HOUR');


SELECT
    STRFTIME('%d-%m-%Y', 'NOW');