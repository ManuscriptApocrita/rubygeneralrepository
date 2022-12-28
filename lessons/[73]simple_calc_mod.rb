#Написать калькулятор, который работает с числами с плавающей точкой.

puts "Input first number:"
number_one = gets.to_f

puts "Input second number:"
number_two = gets.to_f

puts "Select math operation - (+ - * /):"
math_operation = gets.chomp.to_s

puts "Result:"

case math_operation

when "+"
	puts number_one + number_two
when "-"
	puts number_one - number_two
when "*"
	puts number_one * number_two
when "/"
	puts number_one / number_two
else
	puts "This operation not provided in this programm..."
end