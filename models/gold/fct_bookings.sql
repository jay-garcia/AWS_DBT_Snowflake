{% set configs = [
    {
        "table": "AIRBNB.GOLD.OBT_AIRBNB",
        "columns": "GOLD_OBT.BOOKING_ID, GOLD_OBT.LISTING_ID, GOLD_OBT.HOST_ID, GOLD_OBT.TOTAL_AMOUNT, GOLD_OBT.CLEANING_FEE, GOLD_OBT.SERVICE_FEE, GOLD_OBT.ACCOMMODATES, GOLD_OBT.BEDROOMS, GOLD_OBT.BATHROOMS, GOLD_OBT.PRICE_PER_NIGHT, GOLD_OBT.RESPONSE_RATE",
        "alias" : "GOLD_OBT"
    },
    {
        "table": "AIRBNB.gold.dim_listings",
        "columns": "",
        "alias" : "dim_listings",
        "join_condition": "gold_obt.listing_id = dim_listings.listing_id"
    },
    {
        "table": "AIRBNB.gold.dim_hosts",
        "columns": "",
        "alias": "dim_hosts",
        "join_condition": "gold_obt.host_id = dim_hosts.host_id"
    }
]

%}

SELECT
        {{ configs[0]['columns'] }}
FROM
        {{configs[0]['table']}} AS {{configs[0]['alias']}}