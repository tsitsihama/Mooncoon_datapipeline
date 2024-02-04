select


    stg_results.id  as Mission_id,
    stg_results.mission__name  as Mission_Name,
    stg_results.mission__description as Mission_Description,
    stg_results.mission__type as Mission_type,
    stg_results.mission__orbit__name as Orbit
from {{ ref('stg_results') }}
