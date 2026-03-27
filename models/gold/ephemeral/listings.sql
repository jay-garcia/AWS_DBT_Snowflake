WITH LISTINGS AS (
    SELECT
        LISTING_ID,
        PROPERTY_TYPE,
        ROOM_TYPE,
        CITY,
        COUNTRY,
        price_per_night_tag,
        listing_created_at
    FROM {{ ref('obt_airbnb') }}
) SELECT * FROM LISTINGS