SELECT  files.ID,
  files.CONTENT,
  files.CONTENT_HTML,
  files.FILE_BLOB,
    json_extract(file_blob, '$.created') as FILE_CREATED,
 DateTime(json_extract(file_blob, '$.created'), 'unixepoch', 'localtime') as FILE_CREATED_CONV,
  json_extract(file_blob, '$.url') as URL,
  json_extract(file_blob, '$.name') as NAME,
  json_extract(file_blob, '$.filetype') as FILE_TYPE
  FROM FILES
