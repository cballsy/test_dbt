{{ config(materialized='ephemeral') }}

with orders as (
	select *
	from {{ ref('orders_xf') }}
)
select *
from orders
where o_orderpriority like '1%'
