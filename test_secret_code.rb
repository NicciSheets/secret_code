require "minitest/autorun"
require_relative "secret_code.rb"

class TestSecretCode < Minitest::Test 

	
	def test_assert_ready_text_for_encryption
		assert_equal("idislikesecretcodes", ready_text("I dislike secret codes."))
	end

	
end

#message : "I dislike secret codes."
