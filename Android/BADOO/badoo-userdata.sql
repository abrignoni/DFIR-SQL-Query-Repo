select 
user_id,
user_name,
age,
CASE gender
    WHEN 1 THEN 'Male'
    WHEN 0 THEN 'Female'
    ELSE 'Unknown'
END as gender,
user_image_url,
photo_url,
max_unanswered_messages,
sending_multimedia_enabled,
user_deleted
from conversation_info