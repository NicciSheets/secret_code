def secret_code(top_secret)
	new_secret_code = []
	top_secret2 = top_secret.split(/ /).to_s
	top_secret3 = top_secret2.downcase 
	puts top_secret3
	top_secret3.gsub(/[a-z%*]/) do |letter| #gsub differs from sub in that it makes the changes globaly - that is, if the "l" was changed to 8 in "hello", gsub returns as "he88o", while sub returns as "he8lo"
			new_letter = ""
			if letter == "z"
				new_letter = "e"
			elsif letter == "y"
				new_letter = "d"
			elsif letter == "x"
				new_letter = "c"
			elsif letter == "w" 
				new_letter = "b"
			elsif letter == "v"
				new_letter =  "a"
			else
				new_letter = (letter.ord + 5)
			new_letter2 = new_letter.chr
			new_secret_code << new_letter2
			end	
		end
		new_secret_code.reduce(:concat)
end


# def letter_z()
# 	new_letter
# 	if letter == "z"
# 		new_letter = "e"
# 	end
# end

