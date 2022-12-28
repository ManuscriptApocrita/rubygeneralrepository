#Доработать программу из предыдущего задания так, чтобы в конструкторе теперь передавался
#(и сохранялся в переменной экземпляра класса) еще один параметр: возраст. Добавить в класс
#метод, который говорит, пожилой человек (возраст > 60) или нет. А метод, который выводит
#полное имя, поправить так, чтобы молодежь он называл только по имени, а пожилых уважительно,
#по имени и отчеству. Создать в программе пару человек с разными именами и возрастами и
#вывести на экран информацию о них.

class Human
	def initialize(first_name, middle_name, age)
		@first_name = first_name
		@middle_name = middle_name
		@age = age
	end

	def old?
		return @age >= 60
	end

	def full_name
		if old? 
			return "#{@first_name} #{@middle_name}"
		else
			return "#{@first_name}"
		end
	end
end

person1 = Human.new("Максим", "Оладьевич", 34)
person2 = Human.new("Арсений", "Хабибулаевич", 62)
person3 = Human.new("Терек", "Артурович", 17)

puts "There are three people in the base:"

puts person1.full_name
puts person2.full_name
puts person3.full_name