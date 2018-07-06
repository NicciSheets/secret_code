def ready_text(message)
	message.downcase.gsub(/[^a-z0-9]/i, '')
end


def text2char_arr(message)
	message.split(//)
end


def alphabet_index()
end





#puts ready_text("I dislike secret codes.")
#p text2char_arr("idislikesecretcodes")