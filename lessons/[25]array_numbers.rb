#Написать программу, которая выводит массив чисел от 1 до N. И выводит сумму
#всех чисел этого массива. Число N спрашивается у пользователя из консоли.

array = []

puts "Input N"
user_input = gets.to_i
step = 1

while step <= user_input
  array << step
  step += 1
end

puts array.to_s
puts "Summ of numbers: " + array.sum.to_s