SELECT
file.mrl,
media.title,
media.is_favorite,
media.play_count,
datetime(media.last_played_date, 'unixepoch', 'localtime') as last_played_date,
datetime(media.insertion_date, 'unixepoch', 'localtime') as insertion_date
FROM Media, File
WHERE file.media_id = Media.id_media
