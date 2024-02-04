with source as (

    select * from {{ source('mooncoon_rocket_data', 'mooncoon_rocket_launches_table__results__program') }}

),

renamed as (

    select
        id,
        name,
        description,
        start_date

    from source

)

select * from renamed