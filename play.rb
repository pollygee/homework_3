require './game'


class Player
	def get_guess
		puts "Enter a letter >"
		guess_letter = gets.chomp
	end
end

g = HangmanGame.new
puts g.guess_word.join
player = Player.new

until g.over?
  guess = player.get_guess
  result = g.compare guess
  puts g.guess_word.join
  puts "Your guess was: #{guess}"
  puts "Number of guesses left: #{g.tries}"
end



if g.won?
  puts "Congrats! You're awesome."
elsif g.lost?
  puts "You're a terrible human being."
  puts "The answer was #{g.word}, obviously"
end


