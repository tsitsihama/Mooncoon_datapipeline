select

    
    stg_results.id as Pad_id,
    stg_results.pad__name  as Pad_Name,
    stg_results.pad__wiki_url as Wiki_Url,
    stg_results.pad__map_url as Map_url,
    stg_results.pad__location__url as Location_Url,
    stg_results.pad__location__name as Location_name,
    stg_results.pad__location__country_code as Country,
    stg_results.pad__location__map_image as Map_image,
    stg_results.pad__location__total_launch_count as Total_Launch_Count,
    stg_results.pad__location__total_landing_count as Total_Landings_Count

from {{ ref('stg_results') }}
