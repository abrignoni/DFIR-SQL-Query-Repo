select
fsnodes .name AS "File name",
cachefiles .cacheDataId AS "Chache Data ID",
cachefiles .size as "Size (bytes)",
datetime(fsnodes .modifiedAtTimestamp, 'UNIXEPOCH', 'localtime') AS "Modification Date",
datetime(fsnodes .accessAtTimestamp, 'UNIXEPOCH', 'localtime') AS "Access Date",
datetime(fsnodes .createdAtTimestamp, 'UNIXEPOCH', 'localtime') AS "Creation Date",
from fsnodes, cachefiles
where cachefiles .inodeId = fsnodes .inodeId
