with 

source as (

    select * from {{ source('gz_raw_data', 'raw_gz_product') }}

),

renamed as (

    select
        products_id,
        purchse_price

    from source

)

select
    products_id AS product_id,
    purchse_price AS purchase_price
from renamed
