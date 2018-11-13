{{ config(materialized='view') }}

with customer_xf as (
	select * from {{ ref('customer_xf') }}
), orders_xf as (
	select * from {{ ref('high_priority_orders') }}
)
select *
from customer c
  inner join orders o
    on c.c_custkey = o.o_custkey
