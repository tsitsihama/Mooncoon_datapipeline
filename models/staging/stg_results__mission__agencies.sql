
with source as (

    select * from {{ source('mooncoon_rocket_data', 'mooncoon_rocket_launches_table__results__mission__agencies') }}

),

renamed as (

    select
        id,
        name,
        country_code,
        abbrev,
        description,
        administrator,
        founding_year,
        launchers,
        spacecraft,
        total_launch_count,
        successful_launches,
        failed_launches,
        pending_launches,
        successful_landings,
        failed_landings,
        attempted_landings,
        info_url
      

    from source

)

select * from renamed