SELECT   messaging_channel_counts.CHANNEL_TYPE,
messaging_channels.NAME_OR_USER,
users.NAME,
users.PROFILE_REAL_NAME,
messages.USER_ID,
messages.CHANNEL_ID,
messages.TS as TS_Original,
DateTime(messages.TS, 'unixepoch', 'localtime') as TS_Conv,
messages.MESSAGE_BLOB,
  json_extract(MESSAGE_BLOB, '$.text') as TEXTinJSON,
  json_extract(MESSAGE_BLOB, '$.files[0].filetype') as FILE_TYPE,
  json_extract(MESSAGE_BLOB, '$.files[0].name') as FILE_NAME,
  json_extract(MESSAGE_BLOB, '$.files[0].created') as FILE_CREATED,
  DateTime(json_extract(MESSAGE_BLOB, '$.files[0].created'), 'unixepoch', 'localtime') as FILE_CREATED_CONV,
  json_extract(MESSAGE_BLOB, '$.files[0].public_url_shared') as PUBLIC_URL_SHARED,
  json_extract(MESSAGE_BLOB, '$.files[0].permalink') as PERMALINK,
  json_extract(MESSAGE_BLOB, '$.files[0].id') as FILE_ID
FROM users, messages, messaging_channel_counts, messaging_channels
WHERE messages.USER_ID = users.ID and messaging_channel_counts.id = messages.channel_id 
  and messaging_channels.msg_channel_id = messages.channel_id
ORDER BY messages.ts
