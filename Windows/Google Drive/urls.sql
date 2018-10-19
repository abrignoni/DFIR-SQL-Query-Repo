select
url as "URL",
title as "Title",
visit_count as "Visit Count",
datetime((last_visit_time / 1000000)-11644473600, 'UNIXEPOCH') as "Last Visit Time (UTC)"
from urls where url like "%drive.google.com%"
