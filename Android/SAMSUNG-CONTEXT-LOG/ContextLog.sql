SELECT
timestamp as time_stamp,
time_zone,
app_id,
app_sub_id,
starttime,
stoptime,
duration,
duration/1000 as duraton_in_secs
from use_app