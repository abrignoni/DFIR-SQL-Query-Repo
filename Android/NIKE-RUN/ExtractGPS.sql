CREATE VIEW sub1
as
SELECT * FROM activity_raw_metric, activity_metric_group
WHERE activity_raw_metric.rm_metric_group_id = activity_metric_group._id 
ORDER BY activity_raw_metric.rm_start_utc_millis;

SELECT datetime(lat.rm_start_utc_millis / 1000, 'unixepoch', 'localtime') as day, lat.rm_value as latitude, long.rm_value as longitude
FROM sub1 as lat left join sub1 as long on lat.rm_start_utc_millis = long.rm_start_utc_millis
WHERE lat.mg_metric_type = 'latitude' and long.mg_metric_type = 'longitude'
ORDER BY lat.rm_start_utc_millis; 
DROP VIEW sub1;
