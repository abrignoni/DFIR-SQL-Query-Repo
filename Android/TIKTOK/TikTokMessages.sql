/* For this query to run the db_im_xx database must be attached to your working
messages table. The messages table has a 19 digit long filename witht the _im.db extension.
In this sample query the attached db_im_xx table was named as 'nicks'. You have to attach it
and name it the same for this query to run as-is. This query was tested in DB Browser for SQLite
verion 3.10.1. For details see blog post here: 

By: Alexis Brignoni
Twitter: @AlexisBrignoni
*/

select
UID,
UNIQUE_ID,
NICK_NAME,
datetime(created_time/1000, 'unixepoch', 'localtime') as created_time,
json_extract(content, '$.text') as message,
json_extract(content,'$.display_name') as links_gifs_display_name,
json_extract(content, '$.url.url_list[0]') as links_gifs_urls,
read_status,
	case when read_status = 0 then 'Not read'
		when read_status = 1 then 'Read'
		else read_status
	end
	read_not_read,
local_info
from nicks.SIMPLE_USER, msg
where UID = sender order by created_time
