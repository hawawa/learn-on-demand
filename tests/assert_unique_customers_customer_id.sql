select
    customer_id,
    count(*) as record_count
from {{ ref('dim_customers') }}
group by customer_id
having count(*) > 1