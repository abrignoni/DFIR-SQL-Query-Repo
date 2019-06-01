select 
datetime(time_start, 'unixepoch', 'localtime') as time_start, 
datetime(time_end, 'unixepoch', 'localtime') as time_end, 
pid,
process_name,
type, 
cpu_time, 
total_cpu_time, 
foreground_time 
FROM history_process