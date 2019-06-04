SELECT
ifnull(firstset.sender_name, 'Local User'),
ifnull(secondset.recipient_name, 'Local User'),
firstset.chat_text,
datetime(firstset.created_timestamp/1000, 'unixepoch', 'localtime') as create_time,
datetime(firstset.modified_timestamp/1000, 'unixepoch', 'localtime') as modified_time,
firstset.status,
firstset.payload
FROM
(
SELECT
id,
user_name as sender_name,
sender_id,
recipient_id,
json_extract(payload, '$.payload.text') as chat_text,
created_timestamp,
modified_timestamp,
status,
payload
from message  
left join conversation_info
on user_id = sender_id
)as firstset

join
(
SELECT
id,
user_name as recipient_name,
sender_id,
recipient_id,
json_extract(payload, '$.payload.text') as chat_text,
created_timestamp,
modified_timestamp,
status,
payload
from message  
left join conversation_info
on user_id = recipient_id
) as secondset
on firstset.id = secondset.id
order by firstset.created_timestamp
