select 
datetime(time_start, 'unixepoch', 'localtime') as time_start, 
datetime(time_end, 'unixepoch', 'localtime') as time_end, 
name,
power_use,
flags,
wake_count,
wake_time
FROM history_power