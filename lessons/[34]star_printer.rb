#Написать метод, который выводит на экран строку, состоящую из звездочек *.
#Длина строки (количество звездочек) должно быть параметром метода.
#Программа должна спросить у пользователя в консоли длину строки и вывести на экран
#нужную строчку используя этот метод.

def star_printer(number)
	result = ""
	counter = 0
	while number > counter
		result << "*"
		counter += 1
	end
	return result
end

puts "How many stars do you need?"
number = gets.to_i
puts "Here yours stars:"
puts star_printer(number).to_s