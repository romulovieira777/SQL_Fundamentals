DELETE FROM
           COMPANY;


DELETE FROM
           ATTENDEE
WHERE
    PHONE IS NULL AND EMAIL IS NULL;


SELECT
    *
FROM
    ATTENDEE
WHERE
    PHONE IS NULL AND EMAIL IS NULL;


DELETE FROM
           ATTENDEE;


UPDATE
    ATTENDEE
SET
    PHONE = 4802735872
WHERE
    ATTENDEE_ID = 3;


UPDATE
    ATTENDEE
SET
    EMAIL = UPPER(EMAIL);


SELECT
    *
FROM
    ATTENDEE;