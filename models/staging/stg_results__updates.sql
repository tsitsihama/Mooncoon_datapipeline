with source as (

    select * from {{ source('mooncoon_rocket_data', 'mooncoon_rocket_launches_table__results__updates') }}

),

renamed as (

    select
        id,
        comment,
        created_by,
        created_on
    from source

)

select * from renamed