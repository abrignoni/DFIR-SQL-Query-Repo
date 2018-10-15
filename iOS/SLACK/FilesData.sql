select distinct 
ZSLKMESSAGE.ZUSERID as MessageGeneratedFrom,
ZSLKCOREDATAUSER.ZREALNAME as MessageGeneratedFromName,
ZSLKCOREDATAUSER.ZNAME as MessageGeneratedFromNameAlt,
ZSLKBASECHANNEL.ZNAME as MessageSentToChannelName,
ZSLKMESSAGE.ZTEXT,
datetime(ZSLKMESSAGE.ZTIMESTAMP, 'unixepoch', 'localtime') as MessageTimeStamp,  
ZSLKMESSAGE.ZFILEIDS,
       json_extract(ZFILEIDS, '$[0]') as HasSharedFile,
ZSLKFILE.ZMODESTRING,
ZSLKFILE.ZTITLE,
ZSLKFILE.ZTYPESTRING,
datetime(ZSLKFILE.ZTIMESTAMP, 'unixepoch', 'localtime') as FileTimeStamp,
ZSLKFILE.ZPREVIEW,
ZSLKFILE.ZSIZE, 
ZSLKFILE.ZPRIVATEDOWNLOADURL,
ZSLKFILE.ZPERMALINKURL,  
ZSLKMESSAGE.ZCHANNELID,
ZSLKBASECHANNEL.ZTSID,
ZSLKBASECHANNEL.ZTSID1,
ZSLKCOREDATAUSER.ZTSID
from ZSLKMESSAGE, ZSLKBASECHANNEL,ZSLKCOREDATAUSER, ZSLKFILE
where  ZSLKCOREDATAUSER.ZTSID = ZSLKMESSAGE.ZUSERID and
(ZSLKBASECHANNEL.ZTSID = ZSLKMESSAGE.ZCHANNELID or ZSLKBASECHANNEL.ZTSID1 = ZSLKMESSAGE.ZCHANNELID) and
HasSharedFile = ZSLKFILE.ZTSID 
order by ZSLKMESSAGE.ZTIMESTAMP