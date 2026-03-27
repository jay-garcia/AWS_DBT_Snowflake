WITH BOOKINGS AS 
(
    SELECT
        BOOKING_ID,
        BOOKING_DATE,
        BOOKING_STATUS,
        CREATED_AT
    FROM {{ ref('obt_airbnb') }}
) select * from bookings