#Пользователь должен ввести ограничение длины массива чисел. Потом из рандомнозаписанных
#в массив чисел выбирается наибольшее

array = []
count = 0
num = 0

puts "What is the length of the array of random numbers?"
user_input = gets.to_i

while count <= user_input - 1 do
  count += 1
  array << rand(101)
end

puts array.to_s

for element in array do
  if element >= num
  num = element
  end
end

puts "Largest number: " + num.to_s