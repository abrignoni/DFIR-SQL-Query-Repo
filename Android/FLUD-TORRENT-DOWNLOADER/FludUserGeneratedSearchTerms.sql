select
_id as _id1,
display1,
query,
datetime(date/1000, 'UNIXEPOCH', 'localtime') as date
FROM suggestions
order by date