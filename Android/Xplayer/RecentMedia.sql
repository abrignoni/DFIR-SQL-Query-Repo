select
id,
url,
name,
type,
datetime(last_time/1000, 'UNIXEPOCH', 'localtime') as LastTime,
(seen_length / 1000) as SeenInSecs,
(duration / 1000) as Duration,
json
from RecentMedia
