def ready_text(message)
	message.downcase.gsub(/[^a-z0-9]/i, '')
end


def text2char_arr(message)
	message.split(//)
end


def atoz()
	atoz = ("a".."z").to_a
end


def ftoe()
	atoz.rotate(5)
end
	

def indexed_message(message)
	indexed_message_arr = []
	message.each do |letters|
		counter = 0
		atoz.each do |letters_1|
			if letters == letters_1
				indexed_message_arr << counter
			end
			counter += 1
		end
	end
	indexed_message_arr
end



	# ftoz = ('f'..'z').to_a
	# atoe = ('a'..'e').to_a
	# encrypter = ftoz + atoe
	# encrypter
# def alphabet_index(message)
	
# 	#message.each do |letter|
# 		counter = 0











#puts ready_text("I dislike secret codes.")
#p text2char_arr("idislikesecretcodes")
#letters = "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "w", "y", "z"
#p alphabet_index(letters)
#numbers = "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"
#p number_index(numbers)
