#Модифицировать предыдущую программу так, чтобы сначала спрашивалось про направление конвертации

puts "What is your currency?
1. Rubles
2. Dollars"

user_choise = gets.to_i

if user_choise == 1
	puts "How much is 1 dollar worth now?"
		dollar_value = gets.to_f
	puts "How many rubles do you have?"
		ruble_value = gets.to_i
		result = (ruble_value / dollar_value)
	puts "Your inventory for today: " + result.round(2).to_s + "$" 
	else
		puts "How much is 1 dollar worth now?"
			dollar_price = gets.to_f
		puts "How many dollars do you have?"
			dollar_value = gets.to_i
			result = (dollar_value * dollar_price)
		puts "Your inventory for today: " + result.round(2).to_s + " rubles"
end