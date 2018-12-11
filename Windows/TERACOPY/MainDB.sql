SELECT
name AS "History Filename",
datetime(julianday(started)) AS "Operation Start (Local Time)",
 
CASE operation
WHEN 1 THEN 'Copy'
WHEN 2 THEN 'Move'
WHEN 3 THEN 'Test'
WHEN 6 THEN 'Delete'
END AS "Operation Type",
 
SOURCE AS "Source Location",
target AS "Target Location",
files AS "File Count",
SIZE AS "Size (Bytes)"
FROM list
