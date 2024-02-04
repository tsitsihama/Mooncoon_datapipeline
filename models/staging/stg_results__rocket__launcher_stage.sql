with source as (

    select * from {{ source('mooncoon_rocket_data', 'mooncoon_rocket_launches_table__results__rocket__launcher_stage') }}

),

renamed as (

    select
        id,
        launcher__details,
        landing__description,
        landing__location__location__name,
        landing__location__location__total_launch_count,
        landing__location__location__total_landing_count,
        landing__location__successful_landings
    
    from source

)

select * from renamed