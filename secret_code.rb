def ready_text(message)
	message.downcase.gsub(/[^a-z0-9]/i, '')
end


def text2char_arr(message)
	ready_text(message).split(//)
end


def atoz()
	atoz = ("a".."z").to_a
end



def indexed_message(message)
	indexed_message_arr = []
	text2char_arr(message).each do |letters|
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



def encrypter(message)
	encrypted_arr = []
	indexed_message(message).each do |num|
		if num == atoz.rotate(5).index
			atoz.rotate(5)[num]
		end
	encrypted_arr << atoz.rotate(5)[num]
	end
	encrypted_arr.join
end


def decrypter(message)
	decrypted_arr = []
	indexed_message(message).each do |num|
		if num == atoz.rotate(5).index
			atoz.rotate(-5)[num]
		end
	decrypted_arr << atoz.rotate(-5)[num]
	end
	decrypted_arr.join
end










	