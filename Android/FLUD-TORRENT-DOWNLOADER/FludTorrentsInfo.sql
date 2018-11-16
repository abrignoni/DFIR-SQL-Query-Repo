select
_id,
state,
name,
filepath,
savepath,
a_timestamp as time_added,
f_timestamp as time_finished,
sha1,
queue_no
from t_torrents