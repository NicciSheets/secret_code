def ready_text(message)
	message.downcase.gsub(/[^a-z0-9]/i, '')
end


def text2char_arr(message)
	ready_text(message).split(//)
end


def atoz()
	atoz = ("a".."z").to_a
end


def zerotonine()
	zerotonine = ("0".."9").to_a
end

def ftoe()
	atoz.rotate(5)
end


def indexed_message(message) #for encryption
	indexed_message_arr = []
	text2char_arr(message).each do |letters, nums|
		counter = 0
		atoz.each do |letters_1, nums_1|
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
		ftoe.each do |letters_1|
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
		if num == ftoe.index
			ftoe[num]
		end
	encrypted_arr << ftoe[num]
	end
	encrypted_arr.join
end


def decrypter(message) #rotates back 5 places to original alphabet
	decrypted_arr = []
	indexed_encrypted_message(message).each do |num|
		if num == atoz.index
			atoz[num]
		end
	decrypted_arr << atoz[num]
	end
	decrypted_arr.join
end


puts encrypter("I love to code!")

puts decrypter("nqtajythtij")	