def ready_text(message)
	message.downcase.gsub(/[^a-z0-9]/i, '')
end


def text2char_arr(message)
	ready_text(message).split(//)
end


def atoz_withnum()
	atoz = ("a".."z").to_a
	zerotonine = ("0".."9").to_a
	atoz + zerotonine
end


def ftoe_withnum()
	atoz_withnum.rotate(5)
end


def indexed_message(message) #for encryption
	indexed_message_arr = []
	text2char_arr(message).each do |letters, nums|
		counter = 0
		atoz_withnum.each do |letters_1|
			if letters == letters_1
				indexed_message_arr << counter
			end
			counter += 1
		end
	end
	indexed_message_arr 
end

def indexed_encrypted_message(message) #for decryption
	indexed_decrypted_msg_arr = []
	text2char_arr(message).each do |letters|
		counter = 0
		ftoe_withnum.each do |letters_1|
			if letters == letters_1
				indexed_decrypted_msg_arr << counter
			end
			counter += 1
		end
	end
	indexed_decrypted_msg_arr
end


def encrypter(message) #rotated alphabet by 5 places
	encrypted_arr = []
	indexed_message(message).each do |num|
		if num == ftoe_withnum.index
			ftoe_withnum[num]
		end
	encrypted_arr << ftoe_withnum[num]
	end
	encrypted_arr.join
end


def decrypter(message) #rotates back 5 places to original alphabet
	decrypted_arr = []
	indexed_encrypted_message(message).each do |num|
		if num == atoz_withnum.index
			atoz_withnum[num]
		end
	decrypted_arr << atoz_withnum[num]
	end
	decrypted_arr.join
end


