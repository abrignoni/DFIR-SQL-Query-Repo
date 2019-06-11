SELECT
storage,
path,
size,
date,
latest
from FileCache
where path is not NULL