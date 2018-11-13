
select c.*,
    case
		when c_acctbal > 0 then 'in credit'
		when c_acctbal = 0 then 'account in order'
		else 'payment owing'
	end as c_accountstate
from {{ var ('base.customer') }} c
