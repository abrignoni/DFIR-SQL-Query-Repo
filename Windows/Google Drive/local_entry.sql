select
filename as "Filename",
size as "Size",
datetime(modified, 'UNIXEPOCH') as "Modified (UTC)",
checksum as "MD5"
from local_entry
