{{ config(materialized='ephemeral') }}

with customer as (
	select * from {{ ref('customer') }}
), nation as (
	select * from {{ ref('nation') }}
)
select *
from customer c
  inner join nation n
    on c.c_nationkey = n.n_nationkey
		-- make it fail testing
		--on c.c_nationkey = c.c_nationkey
