select 
    rest_name, 
    count(id) as total_orders, 
    sum(price) as total_revenue 
from {{ ref('stg_food_orders') }}
group by 1
