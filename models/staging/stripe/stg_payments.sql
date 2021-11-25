select ID as payment_id,
    ORDERID,
    Paymentmethod as Payment_method,
    Status as Payment_Status,
    Amount as payment_amount
from raw.stripe.payment;