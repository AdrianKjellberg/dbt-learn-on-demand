select
    stg_customers.customer_id 
from {{ ref('stg_orders') }}
    join {{ ref('stg_customers') }} on stg_orders.customer_id = stg_customers.customer_id
where stg_customers.customer_id is null