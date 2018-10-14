select * from credential_table, connection_table, screenshot_table
where credential_table.credential_table_id = connection_table.credential_id
and screenshot_table.screenshot_table_id = connection_table.connection_table_id 
