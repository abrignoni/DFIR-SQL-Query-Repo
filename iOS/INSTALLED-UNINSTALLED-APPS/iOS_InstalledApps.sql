select
application_identifier_tab.[id],
application_identifier_tab.[application_identifier],
kvs.[value]
from kvs, application_identifier_tab
where kvs.[key] = 1 and (application_identifier_tab.[id] = kvs.[application_identifier])
