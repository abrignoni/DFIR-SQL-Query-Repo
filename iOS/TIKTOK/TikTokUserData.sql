/* The database needed for this query is called AwemeIM.db.
This query was tested in DB Browser for SQLite verion 3.10.1. 
For details see blog post here:
By: Alexis Brignoni
Twitter: @AlexisBrignoni
*/

select 
uid,
customID,
nickname,
case 
		when latestchattimestamp > 1 then datetime(latestchattimestamp, 'unixepoch', 'localtime')
		else latestchattimestamp
	end
latestchattimestamp,
url1
from awemecontacts
