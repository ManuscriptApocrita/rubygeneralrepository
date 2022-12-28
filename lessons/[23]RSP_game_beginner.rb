#Напиcать игру "камень - ножницы - бумага". Пользователь вводит свой вариант в консоли
#и играет против компьютера. И видит результат игры. Компьютер должен выбирать
#случайный вариант.
#P.s. одна из модификаций... пусть будет тут. :-)

def gameWcomp(user_choise, computer_choise, user_name)
	if user_choise == computer_choise
		puts "Как неожиданно, ничья! Terminator.lite признает неспособность одолеть человека."
	elsif user_choise == "камень" && computer_choise == "бумага"
		puts "Победителем стал Terminator.lite, он ликует, ведь ему удалось победить человека!"
	elsif user_choise == "ножницы" && computer_choise == "камень"
		puts "Победителем стал Terminator.lite, он ликует, ведь ему удалось победить человека!"
	elsif user_choise == "бумага" && computer_choise == "ножницы"
		puts "Победителем стал Terminator.lite, он ликует, ведь ему удалось победить человека!"
	else
		puts "Победитель выявлен, и его зовут #{user_name}"
	end
end


array = ["камень", "ножницы", "бумага"]

computer_choise = array.sample

user_name = ARGV[0]

if user_name == nil || user_name == ""
	user_name = "Неизвестный"
end

puts "Добро пожаловать, выберите один из ответов: Камень, Ножницы, Бумага."

user_choise = STDIN.gets.encode("UTF-8").chomp.downcase

if user_choise == "камень" || user_choise == "ножницы" || user_choise == "бумага"
	puts
	puts "Игрок " + user_name + " выбрал: " + user_choise
	puts "Terminator.lite выразил ответ в строке: " + computer_choise
	puts user_choise + " vs " + computer_choise
	gameWcomp(user_choise, computer_choise, user_name)
else
	abort "Пожалуйста, проверьте введенное слово на ошибки"
	user_choise = STDIN.gets.encode("UTF-8").chomp.downcase
end