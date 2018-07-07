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


def number_index(numbers)
# 	puts numbers.to_s
# 	numbers.collect { |num| 
# 		if num == 0

end





#puts ready_text("I dislike secret codes.")
#p text2char_arr("idislikesecretcodes")
#letters = "a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "w", "y", "z"
#p alphabet_index(letters)
numbers = "1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25"
p number_index(numbers)