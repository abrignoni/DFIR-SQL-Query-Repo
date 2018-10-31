SELECT 
packagename,
datetime(timestamp/1000, 'UNIXEPOCH', 'LOCALTIME') as scantime
FROM appInfoCache
order by scantime
