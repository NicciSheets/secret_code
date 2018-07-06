def ready_text(message)
	readied_message = ""
	readied_message = message.downcase.gsub(/[^a-z0-9]/i, '')
	return readied_message
	

end





#puts ready_text("I dislike secret codes.")