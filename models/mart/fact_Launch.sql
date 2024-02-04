select
  

 stg_results.id as Rocket_config_id,
 stg_results.id as Launch_Service_Provider_id,
 stg_results.id  as Mission_id,
 stg_results.id as Pad_id,
 stg_results.id as date_id,
 stg_results.name as Rocket_Name,
 stg_results.status__name as Status_Name,
 stg_results.status__description  as Status__Description


from {{ ref('stg_results') }}

-- join {{ ref('dimDate') }} dmDate  on stg_results.id = dimDate.date_id;