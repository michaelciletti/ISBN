# Group Members: 
# Matt Teitz @mwteitz
# Frank Mugo @Frankmugo
# Mike Ciletti @michaelciletti
# Pat Wehman @wehman

def remove_whitespaces_dashes_and_non_integers(isbn) 

	# we are aware this function call is not necessary if we use a regex expression /[0-9x]/
	# String.gsub replaces all occurrences of first String argument with second String argument
	# replace whitespace with nothing
	isbn = isbn.gsub(" ", "")

	# we are aware this function call is not necessary if we use a regex expression /[0-9x]/
	# replace - with nothing
	isbn = isbn.gsub("-", "")
	isbn_length = isbn.length
	if isbn_length != 10
		return false
	else isbn

	# method 1 of removing non numeric characters
	# /[^0-9] match anything other than a digit
	# this is a regular expression
	# the ^ is a NOT logical operator
	# the / .. / is a character class matching all characters between //
	# the [0-9] match any single character 0,1,2,3,4,5,6,7,8,9
	# we do not want to remove the 'x' character for ISBN-10
	# isbn = isbn.gsub(/[^0-9x]/, "")

	# method 2 of removing non numeric characters
	# nested looping structure to find a pattern inside a string 
	# the string is isbn
	# the pattern are the characters we want remaining
	# we are creating a new string to preserve the order of characters

	new_isbn = ""
	characters_allowed = "0123456789x"
	isbn.each_char do |isbn_char|
		characters_allowed.each_char do |char_allowed|
			if isbn_char == char_allowed
				new_isbn += isbn_char
			end
		end
	end
end


	return new_isbn

end

def determine_if_ISBN10_or_ISBN13(new_isbn) 




end