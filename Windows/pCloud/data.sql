select
file .name as "File Name",
file .size as "Size (bytes)",
datetime(file .mtime, 'UNIXEPOCH') as "Modification Time",
datetime(file .ctime, 'UNIXEPOCH') as "Creation Time",
folder. name as "Parent Folder"
from file, folder
where folder .id = file .parentfolderid
