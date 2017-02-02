# Group Members: 
# Matt Teitz @mwteitz
# Frank Mugo @Frankmugo
# Mike Ciletti @michaelciletti
# Pat Wehman @wehman

require "minitest/autorun"
require_relative "isbn_number.rb"

class TestISBNNumber < Minitest::Test

############### testing remove_whitespaces_dashes_and_non_integers function ##################

# rwdani is remove_whitespaces_dashes_and_non_integers
# d is a dash in the test function name
# s is a space in the test function name
	def test_rwdani_pass_0d321d14653d0_returns_0321146530
		assert_equal("0321146530", remove_whitespaces_dashes_and_non_integers("0-321-14653-0"))
	end

	def test_rwdani_pass_0s321s14653s0_returns_0321146530
		assert_equal("0321146530", remove_whitespaces_dashes_and_non_integers("0 321 14653 0"))
	end

	def test_rwdani_pass_0s3d21s14d653s0d_returns_0321146530
		assert_equal("0321146530", remove_whitespaces_dashes_and_non_integers("0 3-21 14-653 0-"))
	end

	# this test function deliberately passes in non-numeric characters such as !@#$%^^&* and letters
	def test_rwdani_pass_23bc87823ax_returns_2387823x
		assert_equal(false, remove_whitespaces_dashes_and_non_integers("23bc87823ax"))
	end

##############################################################################
	def test_rwdani_pass_13f585_returns_135853819x
		assert_equal(false, remove_whitespaces_dashes_and_non_integers("13f585@3!8e19x"))
	end

end