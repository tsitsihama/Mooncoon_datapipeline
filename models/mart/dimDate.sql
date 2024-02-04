-- Calculate the time difference between the current datetime and the launch datetime
with countdown_timer as (
    select
        id as date_id,
        last_updated,
        net as launch_datetime,
        CURRENT_TIMESTAMP(0) as current_datetime,
        extract(epoch from (net - CURRENT_TIMESTAMP(0))) as seconds_remaining
    from {{ ref('stg_date') }}  -- replace with your actual source table/view
)

-- Select the transformed columns
select
    
    launch_datetime,
    current_datetime,
    seconds_remaining,
    -- Extracting date and time components
    DATE(last_updated) as last_updated_date,
    EXTRACT(HOUR FROM last_updated) as last_updated_hour,
    EXTRACT(MINUTE FROM last_updated) as last_updated_minute,
    EXTRACT(SECOND FROM last_updated) as last_updated_second,
    -- You can further format the countdown as per your requirement
    floor(seconds_remaining / 3600) as hours_remaining,
    floor((seconds_remaining % 3600) / 60) as minutes_remaining,
    floor(seconds_remaining % 60) as seconds_remaining1
from countdown_timer
