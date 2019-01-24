select
files.name,
files.path,
files.numplay,
datetime(files.lastplay, "unixepoch", "localtime") as lastplay,
files.fsize / 1e+6 as fsinMB,
files.mlength / 60000 as mlinMin,
files.position / 60000 as posMin,
datetime(files.fdate / 1000, "unixepoch", "localtime") as fdate
from files 
order by files.numplay desc, files.lastplay
