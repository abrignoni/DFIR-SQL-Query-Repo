select docid, c0entry_id, c1text, datetime(c2modified_date, 'unixepoch') as c2modified_date
FROM entries_content