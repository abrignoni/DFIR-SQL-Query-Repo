select 
datetime(time_start, 'unixepoch', 'localtime') as time_start, 
datetime(time_end, 'unixepoch', 'localtime') as time_end, 
battery_charge, 
battery_charging, 
cpu_usage, 
screen_usage, 
cell_signal, 
wifi_signal, 
cpu_clock, 
load
FROM history_master