with orders as (
	select * from {{ ref('orders') }}
), lineitem as (
	select * from {{ ref('lineitem') }}
), part as (
	select * from {{ ref('part') }}
)
select *
from orders o
  inner join lineitem l
    on o.o_orderkey = l.l_orderkey
  inner join part p
    on p.p_partkey = l.l_partkey
