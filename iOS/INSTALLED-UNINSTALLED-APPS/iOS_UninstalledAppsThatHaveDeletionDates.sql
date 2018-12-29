SELECT
application_identifier_tab.[id],
application_identifier_tab.[application_identifier],
kvs.[value]
FROM application_identifier_tab, kvs
where (kvs.[key] = 13 and (application_identifier_tab.[id] = kvs.[application_identifier]))
