select 
    id as payment_id,
    orderid as order_id,
    amount / 100 as amount, -- changing to dollars from cents
    status
from {{source('stripe', 'payment')}}