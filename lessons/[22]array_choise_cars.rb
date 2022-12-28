#Объявить в программе массив марок автомобилей. Вывести на экран размер этого массива и спросить
#у пользователя одно число - номер марки автомобиля, который он хочет получить в подарок.
#Вывести ему ту марку, номер которой запросил пользователь. А если он запросил номер, которого нет -
#сообщить ему об ошибке

cars = ["Toyota", "Lamborgini", "Lada", "Porche", "Bugatti", "Peago", "Tesla", "Mustang", "Ford focus", "Vaz"]
puts cars.to_s
puts "Available is: " + cars.length.to_s + " cars. Choise code needed car."
puts
user_input = gets.to_i
puts

answer = user_input - 1

if answer > 9
	puts "Wrong code..."
else
	if answer < 0
		puts "Wrong code..."
	elsif answer == 9
    puts "You are a gentleman of fortune! You get " + cars[answer].to_s + "!"
  else
    puts "How goodlucky! You get " + cars[answer].to_s + "!"
	end
end