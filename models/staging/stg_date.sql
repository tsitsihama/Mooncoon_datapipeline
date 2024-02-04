
with source as (

    select * from {{ source('mooncoon_rocket_data', 'mooncoon_rocket_launches_table__results') }}

),

renamed as (

    select
    id,
     last_updated,
     net,
     window_end, 
     window_start

    from source

)

select * from renamed