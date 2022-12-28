#Переписать 18-ую программу, добавив метод и сократив код. 

rndnum = rand(16)

puts "Guessed a number from 0 to 15, guess, you have three attempts!"
puts

def contruction(user_input, rndnum)
	if user_input == rndnum
		abort "You guessed the number!"
	else

		if (user_input - rndnum).abs > 2
			puts "Cold!"
		else
			puts "Warm!"
		end

		if user_input > rndnum
			puts "Need less..."
		else 
			puts "Need more..."
		end
	end
end

user_input = gets.chomp.to_i

contruction(user_input, rndnum)

user_input = gets.chomp.to_i

contruction(user_input, rndnum)
				
user_input = gets.chomp.to_i

contruction(user_input, rndnum)

puts
puts "Failed to win. Random number: " + rndnum.to_s