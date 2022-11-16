#Задача - улучшить первую версию игры

require_relative 'gamelib.rb' #Библиотека с нужными для работы программы методами

user_input = ARGV[0].to_i #Имеется возможность ввести аргументом к программе режим игры и ник
nickname = ARGV[1]

puts "This program has the ability to provide a platform for playing Rock, Scissors, Paper. MOD /well/ version 1.2" 
puts "The program has two parameters, 1 - game mode, 2 - username (works in the mode against the computer)"

if nickname == nil #В случае, если пользователь оставил строку пустой - даем ему ник "Человек"
	nickname = "Human"
else
	nickname.to_s
end

while 
	if user_input == 1 || user_input == 2 #Если ввод пользователя через аргумент самой программы совпадает с номером режима, то режим активируется
		case user_input
			when 1

			user_choise = nil
			computer_choise = nil
			vs = nil

			gamevscomp(user_choise, computer_choise, nickname, vs)

		end
			
		case user_input
			when 2

			user1_input = nil
			user2_input = nil
			result = ""

			gamevsfriend(user1_input, user2_input, result)

		end
			else #В ином случае предлагается выбрать режим
				puts "There are two game modes, 1 - YOU vs AI, 2 - YOU vs Friend"
				user_input = STDIN.gets.to_i #Беру от пользователя значение типа число
	end
end