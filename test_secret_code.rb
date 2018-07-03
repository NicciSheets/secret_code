require "minitest/autorun"
require_relative "secret_code.rb"

class TestSecretCode < Minitest::Test 

	# def test_assert_returns_as_array
	# 	assert_equal(Array, secret_code().class)
	# end

	# # # def test_assert_array_formatted_to_string
	# # 	assert_equal(String, secret_code("Nicci is so smart!").class)
	# # end

	# def test_assert_all_characters_lowercase
	# 	assert_equal("nicci is so smart!", secret_code("Nicci is so smart!"))
	# end

	# def test_assert_z_returns_as_e
	# 	assert_equal(["eeee"], secret_code2("zzZZ"))
	# end
	def test_assert_character_returns_as_plus_5_ordinal_values
		assert_equal(["snhhnnxxtxrfwy"], secret_code("Nicci is so smart"))
	end

end
