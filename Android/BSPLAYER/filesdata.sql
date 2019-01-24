select
files.name,
files.path,
files.numplay,
files.lastplay,
files.fsize / 1e+6 as fsinMB,
files.mlength / 60000 as mlinMin,
files.position / 60000 as posMin,
files.fdate 
from files 
order by files.numplay desc, files.lastplay