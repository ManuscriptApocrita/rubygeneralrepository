#Написать программу, которая находит среднее арифметическое трех, введенных пользователем чисел

puts "Write number 1: "
	one = gets.to_i
puts "Write number 2: "
	two = gets.to_i
puts "Write number 3: "
	three = gets.to_i

average = (one + two + three) / 3

puts "Average number: " + average.to_s