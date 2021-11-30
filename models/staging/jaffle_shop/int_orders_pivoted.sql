{%- set status_types = ['returned', 'completed'] -%}
select
  --  user_id as customer_id,
  --  id as order_id
    'Total' 
    {%- for status_type in status_types %}
    , sum(case when status ='{{ status_type }}' then 1 else 0 end) as {{status_type}}
    {%- endfor %}
from {{ source('jaffle_shop', 'orders') }}
--group by id