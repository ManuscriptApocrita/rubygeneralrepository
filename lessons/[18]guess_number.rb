#Написать программу, которая загадывает случайное число от 0 до 15
#включительно и просит пользователя его угадать с трех попыток.

rndnum = rand(16)

puts "Guessed a number from 0 to 15, guess, you have three attempts!"
puts

user_input = gets.chomp.to_i

if user_input == rndnum
	abort "You guessed the number!"
else

	if (user_input - rndnum).abs > 2
		puts "Cold!"
	else
		puts "Warm!"
	end

	if user_input > rndnum
		puts "Need less"
	else 
		puts "Need more"
	end

	user_input = gets.chomp.to_i

	if user_input == rndnum
		abort "You guessed the number!"
	else

		if (user_input - rndnum).abs > 2
			puts "Cold!"
		else
			puts "Warm!"
		end

		if user_input > rndnum
			puts "Need less"
		else 
			puts "Need more"
		end

		user_input = gets.chomp.to_i

		if user_input == rndnum
			abort "You guessed the number!"
		else

			if (user_input - rndnum).abs > 2
				puts "Cold!"
			else
				puts "Warm!"
			end

			if user_input > rndnum
				puts "Need less"
			else 
				puts "Need more"
			end
		end
	end
end

puts
puts "Failed to win. Random number: " + rndnum.to_s