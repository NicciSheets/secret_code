def ready_text(message)
	message.downcase.gsub(/[^a-z0-9]/i, '')
end


def text2char_arr(message)
	message.split(//)
end


def alphabet_index(letters)
	letters.to_a
	letter_arr = []
	counter = 0
	letters.map.each_with_index do |letter|
		if letter == "a"
			letter_arr << counter
		end 
	counter = counter + 1
	counter.to_s
	end
	
end






#puts ready_text("I dislike secret codes.")
#p text2char_arr("idislikesecretcodes")
#letters = "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "w", "y", "z"
#p alphabet_index(letters)