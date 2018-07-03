require "minitest/autorun"
require_relative "secret_code.rb"

class TestSecretCode < Minitest::Test 

	def test_assert_returns_as_array
		assert_equal([], secret_code().class)
	end
end
