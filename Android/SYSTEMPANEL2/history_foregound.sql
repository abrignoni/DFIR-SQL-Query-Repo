select 
datetime(time_start, 'unixepoch', 'localtime') as time_start, 
datetime(time_end, 'unixepoch', 'localtime') as time_end, 
interval,
process_name,
type,
battery_usage,
cpu_usage
FROM history_foreground