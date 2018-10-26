SELECT
VideoDirectory.Path,
VideoFile.FileName,
datetime(VideoFile.LastModified/1000, 'unixepoch', 'localtime') as LastModifiedFromFile,
(VideoFile.Duration/1000) as LengthInSecs,
(VideoFile.Size/1e+6) as SizeInMegaBytes,
(VideoFile.Size/1000) as SizeInKiloBytes,
datetime(VideoFile.LastWatchTime/1000, 'unixepoch', 'localtime') as LastTimeWatched,
datetime(VideoFile.FinishTime/1000, 'unixepoch', 'localtime') as LastTimeVideoFinished
FROM VideoFile, VideoDirectory 
WHERE VideoDirectory.Id = VideoFile.Directory
