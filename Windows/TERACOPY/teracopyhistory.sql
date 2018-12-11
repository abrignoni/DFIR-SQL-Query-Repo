SELECT
Source as "File Path",

CASE State
WHEN 0 THEN 'Added'
WHEN 1 THEN 'OK'
WHEN 2 THEN 'Verified'
WHEN 3 THEN 'Error'
WHEN 4 THEN 'Skipped'
WHEN 5 THEN 'Deleted'
WHEN 6 THEN 'Moved'
END as "Operation State",

Size as "Size (Bytes)",
Attributes,

Case IsFolder
WHEN 0 THEN ''
WHEN 1 THEN 'Yes'
END as "Folder",

datetime(julianday(Creation)) as "Created Date/Time",
datetime(julianday(Access)) as "Accessed Date/Time",
datetime(julianday(Write)) as "Modified Date/Time",

SourceCRC as "Source Hash",
TargetCRC as "Target Hash",
Message

FROM Files