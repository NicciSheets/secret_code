require "minitest/autorun"
require_relative "secret_code.rb"

class TestSecretCode < Minitest::Test 

	
	def test_assert_ready_text_for_encryption
		assert_equal("idislikesecretcodes", ready_text("I dislike secret codes."))
		assert_equal("partylikeits1999", ready_text("Party like it's 1999."))
	end

	def test_assert_string_returns_as_individual_characters
		assert_equal(["i", "d", "i", "s", "l", "i", "k", "e", "s", "e", "c", "r", "e", "t", "c", "o", "d", "e", "s"], text2char_arr("I dislike secret codes."))
		assert_equal(["p", "a", "r", "t", "y", "l", "i", "k", "e", "i", "t", "s", "1", "9", "9", "9"], text2char_arr("Party like it's 1999."))
	end


	def test_assert_atoz_returns_as_array_filled_with_alphabet
		assert_equal(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9"], atoz_withnum())
		assert_equal(Array, atoz_withnum().class)
	end


	def test_assert_ftoe_returns_as_array_shifted_5
		assert_equal(["f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d", "e"], ftoe_withnum())
		assert_equal(Array, ftoe_withnum().class)
	end	


	def test_assert_message_returns_as_indexed_array
		assert_equal([8, 3, 8, 18, 11, 8, 10, 4, 18, 4, 2, 17, 4, 19, 2, 14, 3, 4, 18], indexed_message("I dislike secret codes."))
		assert_equal([15, 0, 17, 19, 24, 11, 8, 10, 4, 8, 19, 18, 27, 35, 35, 35], indexed_message("Party like it's 1999"))
	end


	def test_assert_indexed_message_returns_as_encrypted_secret_code
		assert_equal("ninxqnpjxjhwjyhtijx", encrypter("I dislike secret codes."))
		assert_equal("ufwy3qnpjnyx6eee", encrypter("Party like it's 1999."))
	end

	def test_assert_decrypted_message_returns_as_individual_characters
		assert_equal(["n", "i", "n", "x", "q", "n", "p", "j", "x", "j", "h", "w", "j", "y", "h", "t", "i", "j", "x"], text2char_arr("ninxqnpjxjhwjyhtijx"))
	end
	
	def test_assert_decrypted_message_returns_as_indexed_array
	 	assert_equal([8, 3, 8, 18, 11, 8, 10, 4, 18, 4, 2, 17, 4, 19, 2, 14, 3, 4, 18], indexed_encrypted_message("ninxqnpjxjhwjyhtijx"))
	end

	def test_assert_decrypted_message_returns_as_ready_text
	 	assert_equal("idislikesecretcodes", decrypter("ninxqnpjxjhwjyhtijx"))
	end

end	



