/* The database needed for this query is called db_im_xx.
This query was tested in DB Browser for SQLite verion 3.10.1. 
For details see blog post here: 

By: Alexis Brignoni
Twitter: @AlexisBrignoni

*/

select
UID,
NICK_NAME,
UNIQUE_ID,
INITIAL_LETTER,
json_extract(AVATAR_THUMB, '$.url_list[0]') as avatarURL,
FOLLOW_STATUS 
from SIMPLE_USER
