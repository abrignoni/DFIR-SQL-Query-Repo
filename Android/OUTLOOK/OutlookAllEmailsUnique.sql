select
folders.name,
messages.accountID,
messages.sentTimestamp,
messages.isRead,
messages.hasAttachment,
messages.subject,
messages.snippetBody,
messages.trimmedBody,
messages.fullBody,
messages.firstToContactEmail,
messages.fromContactEmail,
messages.firstToContactName,
messages.hasCC,
messages.hasBCC,
messages.isDraft,
messages.toContactsString
from messages, folders, messagesInFolders
where messages.accountID = folders.accountID and messagesInFolders.folderID = folders.folderId and messages._id = messagesInFolders.messageID
order by sentTimestamp desc