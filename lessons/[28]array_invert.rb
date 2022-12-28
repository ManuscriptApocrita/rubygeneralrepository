#Инвертирование массива циклом. Написать программу, которая перевернет порядок элементов
#любого исходного массива.

array = []

puts "Input start array... When you complete array, click on enter"

user_input = 0

while user_input != ""
  user_input = gets.to_s.chomp
  array << user_input
end

array.delete("")

puts "Original array: " + array.to_s

array_two = []

for item in array do
  array_two.unshift(item)
end 

puts "New array obtained from the original: " + array_two.to_s