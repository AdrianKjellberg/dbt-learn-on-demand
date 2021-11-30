with status_list as (
    select distinct status  
    from {{ source('jaffle_shop', 'orders') }}
)
select * from status_list
