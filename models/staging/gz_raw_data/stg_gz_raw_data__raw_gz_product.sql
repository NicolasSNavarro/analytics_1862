with 

source as (

    select * from {{ source('gz_data', 'product') }}

),

renamed as (

    select
        products_id,
        purchse_price

    from source

)

select
    products_id AS product_id,
    CAST(purchse_price as FLOAT64) AS purchase_price
from renamed
