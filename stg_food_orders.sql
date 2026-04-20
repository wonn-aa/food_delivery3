with raw_orders as (
    select 1 as id, 'Пицца Хаб' as restaurant, 1500 as price, '2026-04-20' as order_date
    union all
    select 2, 'Суши Мастер', 2800, '2026-04-20'
)
select id, upper(restaurant) as rest_name, price, cast(order_date as date) as dt
from raw_orders
