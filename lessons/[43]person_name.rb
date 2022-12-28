#Создать класс «Человек» с двумя свойствами: имя и отчество.
#В этом классе написать два метода: конструктор и метод, который будет возвращать
#полное имя человека. Конструктор принимает имя и отчество и записывает их в нужные поля.
#Второй метод возвращает полное имя человека. Напишите программу, которая использует этот класс:
#создайте трёх разных людей и выведите на экран их полные имена:

class Human
	def initialize(first_name, middle_name)
		@first_name = first_name
		@middle_name = middle_name
	end

	def full_name
		return "#{@first_name} #{@middle_name}"
	end
end

person1 = Human.new("Максим", "Оладьевич")
person2 = Human.new("Арсений", "Хабибулаевич")
person3 = Human.new("Терек", "Артурович")

puts "There are three people in the base:"
puts person1.full_name
puts person2.full_name
puts person3.full_name