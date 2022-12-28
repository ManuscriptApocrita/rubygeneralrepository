#Сделать программу, которая определяет, четное ли число?

puts "Input number for examine..."
number = gets.to_i

puts number

if number % 2 == 0 #Если остаток при делении на два будет ноль, то число четное
	puts "Even number!"
else
	puts "Odd number!"
end