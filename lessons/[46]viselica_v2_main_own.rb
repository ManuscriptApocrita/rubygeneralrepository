require_relative "gtwlib"

printer = ResultPrinter.new

game = Game.new

puts "The game: <Guess the word>, version 1.4" 
puts "\nRules: You have 5 attempts to guess the word by entering letters."
puts "You have two clue, a random letter from the word will open when writing <hint>."
puts "\nStart a game? Press enter"

start = gets.chomp

game.word_from_file
puts game.word
if start == ""

	while game.status == 0
		system('cls') || system('clear')

		printer.print_status(game)
		game.ask_next_letter

	end

	printer.print_status(game)

else
	puts "Press enter..."
	
end