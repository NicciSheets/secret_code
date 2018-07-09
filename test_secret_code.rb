require "minitest/autorun"
require_relative "secret_code.rb"

class TestSecretCode < Minitest::Test 

	
	def test_assert_ready_text_for_encryption
		assert_equal("idislikesecretcodes", ready_text("I dislike secret codes."))
	end

	def test_assert_string_returns_as_individual_characters
		assert_equal(["i", "d", "i", "s", "l", "i", "k", "e", "s", "e", "c", "r", "e", "t", "c", "o", "d", "e", "s"], text2char_arr("I dislike secret codes."))
	end

	def test_assert_atoz_returns_as_array_filled_with_alphabet
		assert_equal(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"], atoz())
	end

	def test_assert_ftoe_returns_as_array_shifted_5
		assert_equal(["f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z", "a", "b", "c", "d", "e"], ftoe())
	end

	def test_assert_ftoe_rotated_returns_back_as_original_alphabet
		assert_equal(["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"], ftoe_rotated())
	end

	def test_assert_message_returns_as_indexed_array
		assert_equal([8, 3, 8, 18, 11, 8, 10, 4, 18, 4, 2, 17, 4, 19, 2, 14, 3, 4, 18], indexed_message("I dislike secret codes."))
	end

	def test_assert_indexed_message_returns_as_encrypted_secret_code
		assert_equal("ninxqnpjxjhwjyhtijx", encrypter("I dislike secret codes."))
	end

	def test_assert_decrypted_message_returns_as_individual_characters
		assert_equal(["n", "i", "n", "x", "q", "n", "p", "j", "x", "j", "h", "w", "j", "y", "h", "t", "i", "j", "x"], text2char_arr("ninxqnpjxjhwjyhtijx"))
	end
	
	def test_assert_decrypted_message_returns_as_indexed_array
	 	assert_equal([8, 3, 8, 18, 11, 8, 10, 4, 18, 4, 2, 17, 4, 19, 2, 14, 3, 4, 18], indexed_encrypted_message("ninxqnpjxjhwjyhtijx"))
	end

	# def test_assert_decrypted_message_returns_as_ready_text
	# 	assert_equal(["idislikesecretcodes"], decrypter("ninxqnpjxjhwjyhtijx"))
	# end
 end	



