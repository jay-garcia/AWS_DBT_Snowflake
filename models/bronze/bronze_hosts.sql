{{ config( materialized = 'incremental' ) }}

select * from {{ source('airbnb', 'hosts') }}
{% if is_incremental() %}
  WHERE CREATED_AT > (select coalesce(max(CREATED_AT),'1900-01-01') FROM {{ this }})
{% endif %}