-- select
--     c_custkey as customer_key,
--     c_name as customer_name,
--     c_address as customer_address,
--     c_nationkey as nation_key,
--     c_phone as customer_telephone,
--     c_acctbal as customer_account_balance,
--     c_mktsegment as customer_market_segment,
--     c_comment as customer_comments,
--     case
-- 		when c_acctbal > 0 then 'in credit'
-- 		when c_acctbal = 0 then 'account in order'
-- 		else 'payment owing'
-- 	end as customer_account_state
-- from
--     {{ var ('base.customer') }}

select 'dummy' as dummy_field, *
from {{ var ('base.customer') }}
