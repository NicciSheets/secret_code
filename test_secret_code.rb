require "minitest/autorun"
require_relative "secret_code.rb"

class TestSecretCode < Minitest::Test 

	# def test_assert_returns_as_array
	# 	assert_equal(Array, secret_code("Nicci is so smart!").class)
	# end

	def test_assert_array_formatted_to_string
		assert_equal(String, secret_code("Nicci is so smart!").class)
	end
end
