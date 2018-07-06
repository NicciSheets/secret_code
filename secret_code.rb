def ready_text(message)
	readied_message = ""
	readied_message = message.downcase.gsub(/[^a-z0-9]/i, '')
	return readied_message
end


def text2char_arr(message)
	#message.split(//)

end






#puts ready_text("I dislike secret codes.")
#p text2char_arr("idislikesecretcodes")