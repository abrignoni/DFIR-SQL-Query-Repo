select
type,
value,
_id,
day_in_week,
month,
day,
date
from usage_stats
where value > 0
order by _id
