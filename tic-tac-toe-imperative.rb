require 'pry'

# -- Set up game --

list = ["banana", "table", "awesome"]
word = list.sample
letters_in_word = word.split ("")
tries = 5

# ["__"] * word.length

board = [ ]
letters_in_word.each do |letter|
	board.push"__"
end

# -- Start taking player input --

print "Pick a letter > "
guess = gets.chomp


# -- Check guess --
have_seen_a_match = false
letters_in_word.each do |letter|
	if letter == guess
		have_seen_a_match = true
	else

	end

if have_seen_a_match #there were any matchs
	# ...
else
	tries -=1
end

	binding.pry
end

