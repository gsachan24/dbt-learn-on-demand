select Order_Id, sum(amount) as total_amount
from {{ref('stg_payments')}}
group by order_id
having not (total_amount >= 0)