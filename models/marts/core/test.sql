with customers as (
    select * from {{ ref('stg_customers')}}
),

final as (
    select
        customers.customer_id,
        customers.first_name,
        customers.last_name
    from customers
)

select * from final