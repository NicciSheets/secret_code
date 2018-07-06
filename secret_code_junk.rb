def secret_message(message)
	atoz = ('a'..'z').to_a
	ftoz = ('f'..'z').to_a
	atoe = ('a'..'e').to_a
	encrypter = ftoz + atoe
	encrypter

	counter_arr = []
	message.downcase.chars.each do |letter|
		counter = 0
		if letter == ' '
			counter_arr << "sp"
		end
		atoz.each do |letter_1|
			if letter_1 == letter
				counter_arr << counter
			end
		counter = counter + 1
		end
	puts "My counter array is #{counter_arr}."
	end


	top_secret = ' '
	counter_arr.each do |position|
		if position == encrypter[]
			top_secret = top_secret + encrypter[position]	
		end
	top_secret
	puts "My coded message is #{top_secret}"
	end
end

secret_message("Coding is hard") 


