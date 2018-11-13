{{ config(materialized='view') }}

with customer_xf as (
	select * from {{ ref('customer_xf') }}
), orders_xf as (
	select * from {{ ref('orders_xf') }}
)
select *
from customer c
  inner join orders o
    on c.c_custkey = o.o_custkey
