select

   
    stg_results.id as Rocket_config_id,
    stg_results.rocket__configuration__name  as Rocket_Name,
    stg_results.rocket__configuration__description as Rocket_Description,
    stg_results.rocket__configuration__family as Family,
    stg_results.rocket__configuration__manufacturer__country_code as Country,
    stg_results.rocket__configuration__manufacturer__description  as Manufacturer_Description,
    stg_results.rocket__configuration__manufacturer__administrator as Manufacturer_Administrator,
    stg_results.rocket__configuration__manufacturer__founding_year as Manufacturer__Founding_Year,
    stg_results.rocket__configuration__manufacturer__launchers as Manufacturer__Launchers,
    stg_results.rocket__configuration__manufacturer__spacecraft as  Manufacturer__Spacecraft,
    stg_results.rocket__configuration__manufacturer__total_launch_count as Manufacturer__Total_Launch_Count,
    stg_results.rocket__configuration__manufacturer__successful_launches as Manufacturer__Successful_Launches,
    stg_results.rocket__configuration__manufacturer__failed_launches as Manufacturer__Failed_Launches
from {{ ref('stg_results') }}
