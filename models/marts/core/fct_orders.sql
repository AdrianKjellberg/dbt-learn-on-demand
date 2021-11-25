select orders.ID as order_id,
    customers.ID as customer_id,
    payment.amount
from raw.jaffle_shop.customers
    join raw.jaffle_shop.orders on orders.user_ID = customers.ID  
    join raw.stripe.payment on orders.ID = payment.ID  