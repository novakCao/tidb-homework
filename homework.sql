select a,
	sum(b)/sum(b_count) as b,
from(
	select v.a,v.b,
		sum(v.b) as b,
		sum(v.b_count) as e_count
	from(
		select a,b,
		from tablename
		)v
	group by v.a
	)t;

