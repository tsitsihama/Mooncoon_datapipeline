---
title: Mooncoon Dashboard
---

 Dashboard for all the upcoming rocket launches 


```sql card_details
select 
  rocket_name,
  rocket_description,
  country,
  map_url,
  image_url,
  launch_datetime,
  last_updated_date,
  last_updated_hour,
  last_updated_minute,
  last_updated_second,
  location_name,
  manufacturer__launchers

from mooncoon_rocket_data.mart

```




# Rocket Launch Details



---

<Value data={card_details} column=rocket_name />

<img src="{card_details.image_url}" width="200" height="150">


---
<Value data={card_details} column=manufacturer__launchers />
<Value data={card_details} column=location_name />

---

**Time Remaining:** <Value data={card_details} column=launch_datetime fmt='hms'  />

**Date:** <Value data={card_details} column=launch_datetime  fmt='fulldate'/>

**Location:** <Value data={card_details} column=location_name />

---

### Launch Map

{card_details.map_url}

### Description

<Value data={card_details} column=rocket_description />

