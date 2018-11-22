select
			messages.accountID as accountID_b,
			messages.sentTimestamp as sentTimestamp_b,
			messages.isRead as isRead_b,
			attachments.filename as filename_b,
			attachments.contentType as contentType_b,
			attachments.size as size_b,
			attachments.isInline as isInline_b,
			messages.subject as subject_b,
			messages.snippetBody as snippetBody_b,
			messages.trimmedBody as trimmedBody_b,
			messages.fullBody as fullBody_b,
			messages.firstToContactEmail as firstToContactEmail_b,
			messages.fromContactEmail as fromContactEmail_b
		from messages, attachments
		where messages.accountID = attachments.accountID and messages._id = attachments.messageID
		order by sentTimestamp_b desc