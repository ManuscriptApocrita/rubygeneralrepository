
def gamevscomp(user_choise, computer_choise, nickname, vs)

	array = ["rock", "scissors", "paper", "well"]

	computer_choise = array.sample.to_s #Выбор компьютера будет случайным, из массива вытягивается всегда разное значение

	system("clear") || system("cls") #Очистка консоли
	puts "Welcome, #{nickname}, choose one of the answers: rock, scissors, paper, well" #Приветствую пользователя и даю варианты ответа, записываю ответ в переменную
	user_choise = STDIN.gets.to_s.chomp.downcase
	system("clear") || system("cls") #Очистка консоли

	if user_choise == "rock" || user_choise == "scissors" || user_choise == "paper" || user_choise == "well" #Если введенное пользователем меня устроило, а это ответы, которые упомянул в правилах - играем, если нет - цикл
		puts "AI Terminator.lite makes a choice"
		computer_thinks #Добавляю метод, который выводит в интерфейс загрузку, красиво!
		puts "Player " + nickname + " >> " + user_choise.upcase #up
		puts "ИИ Terminator.lite >> " + computer_choise.upcase
		vs = user_choise.capitalize + " vs " + computer_choise.capitalize #Используется для большей наглядности
		gamevscomp_part(user_choise, computer_choise, nickname, vs) #Вставка метода проверки результата игры
	else

		while #Пользователь в ловушке, пока не введет корректный ответ, не будет ему проходу
			if user_choise == "rock" || user_choise == "scissors" || user_choise == "paper" || user_choise == "well"
				system("clear") || system("cls")
				puts "AI Terminator.lite makes a choice"
				computer_thinks
				puts "Player " + nickname + " >> " + user_choise
				puts "ИИ Terminator.lite >> " + computer_choise
				vs = "#{user_choise} vs #{computer_choise}"
				gamevscomp_part(user_choise, computer_choise, nickname, vs)
			else 
				puts "Please enter the suggestion again, you may have made a mistake. There are four answers: rock, scissors, paper, well"
				user_choise = STDIN.gets.chomp.downcase
			end
		end
	end
end

def gamevscomp_part(user_choise, computer_choise, nickname, vs)

	if user_choise == computer_choise #Рассматриваю варианты исходов
		puts
		puts vs 
		puts
		puts "How unexpected, a draw! Terminator.lite recognizes the inability to defeat a human... But only in this iteration!"
	end

	case user_choise
		when "rock"
			case computer_choise 
				when "scissors"
					puts
					puts vs + " // *stone breaks scissors*"
					puts
					puts "Winner: " + nickname.to_s 
				when "paper"
					puts
					puts vs + " // *paper wraps stone*"
					puts
					puts "The winner is Terminator.lite, he rejoices because he managed to defeat a human!"
				when "well"
					puts
					puts vs + " // *a stone falls into a well*"
					puts
					puts "The winner is Terminator.lite, he rejoices because he managed to defeat a human!"
			end
	end

	case user_choise
		when "scissors"
			case computer_choise 
				when "rock"
					puts
					puts vs + " // *stone breaks scissors*"
					puts
					puts "The winner is Terminator.lite, he rejoices because he managed to defeat a human!"
				when "paper"
					puts
					puts vs + " // *scissors cut paper*"
					puts
					puts "Winner: " + nickname.to_s
				when "well" 
					puts
					puts vs + " // *scissors fall into a well*"
					puts
					puts "The winner is Terminator.lite, he rejoices because he managed to defeat a human!"
			end
	end

	case user_choise
		when "paper"
			case computer_choise
				when "rock"
					puts
					puts vs + " // *paper wraps stone*"
					puts
					puts "Winner: " + nickname.to_s
				when "scissors"
					puts
					puts vs + " // *scissors cut paper*"
					puts
					puts "The winner is Terminator.lite, he rejoices because he managed to defeat a human!"
				when "well"
					puts
					puts vs + " // *paper covers the well*"
					puts
					puts "Winner: " + nickname.to_s
			end	
	end
			
	case user_choise
		when "well"
			case computer_choise 
				when "rock"
					puts
					puts vs + " // *a stone falls into a well*"
					puts
					puts "Winner: " + nickname.to_s
				when "scissors"
					puts
					puts vs + " // *scissors fall into a well*"
					puts
					puts "Winner: " + nickname.to_s
				when "paper"
					puts
					puts vs + " // *paper covers the well*"
					puts
					puts "The winner is Terminator.lite, he rejoices because he managed to defeat a human!"
			end
	end

	puts
	puts 
	puts "If you want to play again with the computer - press ENTER to exit the game - exit" #Предусмотрена возможность запустить игру легким способом, удобно!
	user_choise = STDIN.gets.chomp.to_s.downcase

	while 
		if user_choise == ""
			system("clear") || system("cls")
			gamevscomp(user_choise, computer_choise, nickname, vs)
		elsif user_choise == "exit"
			exit
		else
			puts "If you want to play again with the computer - press ENTER to exit the game - exit"
			user_choise = STDIN.gets.chomp.to_s.downcase
		end
	end
end

def computer_thinks

	print "10%..." #Не статичная конструкция декоративной думы компьютера
	sleep(1)
	print rand(18..34).to_s + "%..."
	sleep(rand(2))
	print rand(42..57).to_s + "%..."
	sleep(rand(1))
	print rand(63..85).to_s + "%..."
	sleep(1)
	print "100%"
	puts
	puts "End of response processing, loading into variable"
	sleep(1)
	puts
	system("clear") || system("cls")

end

def gamevsfriend(user1_input, user2_input, result)

	system("clear") || system("cls")
	puts "Choose one of here write: Rock, Scissors, Paper, Well"

	user1_input = STDIN.gets.chomp.to_s.downcase

	until user1_input == "rock" || user1_input == "scissors" || user1_input == "paper" || user1_input == "well" #Пока пользователь не введет возможные варианты ответа - он не продвинется дальше, будет цикл
		puts "Check answer"
		user1_input = STDIN.gets.chomp.to_s.downcase
	end

	system("clear") || system("cls")	
	puts "Choose one of here write: Rock, Scissors, Paper, Well"

	user2_input = STDIN.gets.chomp.to_s.downcase

	until user2_input == "rock" || user2_input == "scissors" || user2_input == "paper" || user2_input == "well"
		puts "Check answer"
		user2_input = STDIN.gets.chomp.to_s.downcase
	end

	system("clear") || system("cls")
	puts "Player1 chose: " + user1_input.capitalize
	puts "Player2 chose: " + user2_input.capitalize
	puts
	puts user1_input.upcase + " vs " + user2_input.upcase
	puts

	case user1_input #Проверка возможных исходов игры
		when "rock"
			case user2_input 
				when "rock"
					result = "draw"
				when "scissors"
					result = "win_player1"
				else
					result = "win_player2"
			end
	end

	case user1_input
		when "scissors"
			case user2_input 
				when "scissors"
					result = "draw"
				when "paper"
					result = "win_player1"
				else 
					result = "win_player2"
			end
	end

	case user1_input
		when "paper"
			case user2_input
				when "rock"
					result = "win_player1"
				when "paper"
					result = "draw"
				when "well"
					result = "win_player1"
				else 
					result = "win_player2"
			end	
	end
		
	case user1_input
		when "well"
			case user2_input 
				when "rock"
					result = "win_player1"
				when "scissors"
					result = "win_player1"
				when "well"
					result = "draw"
				else
					result = "win_player2"
			end
	end

	case result #Вывод результата
		when "draw"
			puts "How unexpectedly, this gaming iteration ended in a draw, #{user1_input} equals to #{user2_input}!"
		when "win_player1"
			puts "The winner is revealed and it's **FIRST player**"
		else
			puts "The winner is revealed and it's **SECOND player**"
	end
	
	puts
	puts 
	puts "If you want to play again with friend - press ENTER to exit the game - exit" #Возможность продолжить игру
	user_choise = STDIN.gets.chomp.to_s.downcase

	while 
		if user_choise == ""
			system("clear") || system("cls")
			gamevsfriend(user1_input, user2_input, result)
		elsif user_choise == "exit"
			exit
		else
			puts
			puts "If you want to play again with friend - press ENTER to exit the game - exit"
			user_choise = STDIN.gets.chomp.to_s.downcase
		end
	end
end