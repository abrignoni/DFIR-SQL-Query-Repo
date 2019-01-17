select
document_id,
_data,
_size /1000 as _sizeKB,
datetime(accessed_time, 'unixepoch', 'localtime') as accessed_time_local,
datetime(last_modified, 'unixepoch', 'localtime') as last_modified_local
from
cache