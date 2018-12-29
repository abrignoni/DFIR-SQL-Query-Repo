SELECT
application_identifier_tab.[id],
application_identifier_tab.[application_identifier]
FROM application_identifier_tab
WHERE NOT EXISTS ( SELECT * 
				   FROM 
				   KVS
				   WHERE (application_identifier_tab.[id] = kvs.[application_identifier]))
