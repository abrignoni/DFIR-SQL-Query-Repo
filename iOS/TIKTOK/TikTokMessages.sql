/* For this query to run the AwemeIM.db database must be attached to your working  
messages table. The messages table directory has a 19 digit long filename and the database within the directory is named db.sqlite. You have to attach one of the  
tables to the other in order for this query to run as-is. This query was tested in DB Browser for SQLite  
verion 3.10.1. For details see blog post here: https://abrignoni.blogspot.com/2018/11/finding-tiktok-messages-in-ios.html     
By: Alexis Brignoni  
Twitter: @AlexisBrignoni  
Blog: abrignoni.blogspot.com  
*/

select
sender,
url1 as profilepicURL,
customid,
nickname,
datetime(localcreatedat, 'unixepoch', 'localtime') as Local_Create_Time,
	case 
		when servercreatedat > 1 then datetime(servercreatedat, 'unixepoch', 'localtime')
		else servercreatedat
	end
servercreatedat,
json_extract(content, '$.text') as message,
json_extract(content, '$.tips') as localresponse,
json_extract(content,'$.display_name') as links_display_name,
json_extract(content, '$.url.url_list[0]') as links_gifs_urls
from TIMMessageORM, awemecontacts
where uid = sender
order by Local_Create_Time
