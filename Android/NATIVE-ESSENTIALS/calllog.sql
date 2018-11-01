SELECT
number,
date,
CASE type WHEN 1 THEN 'Incoming' WHEN 2 THEN 'Outgoing' END as type,
name,
m_content
FROM callsWHERE length(m_content)>0
