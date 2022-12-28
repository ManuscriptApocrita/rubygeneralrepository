#Создать класс хамелеон, у которого есть один метод - поменять цвет. Метод принимает один параметр
# - цвет и выводит на экран строку.

class Chameleon
	def change_color(color_name)
		puts "Now this color: " + color_name.to_s
	end
end

chameleon = Chameleon.new

chameleon.change_color("purple")
sleep(1)
chameleon.change_color("orange")
sleep(1)
chameleon.change_color("red")