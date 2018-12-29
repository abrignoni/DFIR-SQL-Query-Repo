SELECT
application_identifier_tab.[id],
application_identifier_tab.[application_identifier]
FROM application_identifier_tab, kvs
where NOT EXISTS ( SELECT *
				   FROM 
				   KVS
				   WHERE (application_identifier_tab.[id] = kvs.[application_identifier]))
				   
OR (kvs.[key] = 13 and (application_identifier_tab.[id] = kvs.[application_identifier]))
GROUP BY application_identifier_tab.[id]
