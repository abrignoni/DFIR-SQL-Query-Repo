select
files.name as name1,
files.path as path1,
files.numplay as numplay1,
playlist.title
from files, playlist, content
where content.id_playlist = playlist._id and content.id_files = files._id