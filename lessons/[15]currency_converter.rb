#Сделать конвертер валют рубли-доллары, который спрашивает курс, потом спрашивает у юзера, сколько
#у него рублей, а потом выдает результат в доллараха

puts "How much is 1 dollar worth now?"
dollar_value = gets.to_f
puts "How many rubles do you have?"
ruble_value = gets.to_i
result = (ruble_value / dollar_value)
puts "Your inventory for today: $" + result.round(2).to_s