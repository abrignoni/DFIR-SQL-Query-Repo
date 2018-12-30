select
application_identifier_tab.[application_identifier],
kvs.[value]
from kvs, key_tab,application_identifier_tab
where 
key_tab.[key]='compatibilityInfo' and kvs.[key] = key_tab.[id]
and application_identifier_tab.[id] = kvs.[application_identifier]
order by application_identifier_tab.[id]
