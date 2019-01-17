select 
path,
thumb,
datetime(modified, 'unixepoch', 'localtime') as modified
from thumbs