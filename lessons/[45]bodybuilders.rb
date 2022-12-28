#Создать класс Бодибилдер. У него должно быть одно свойство на каждую группу мышц (сколько всего
#мышц - решить самому, главное, не меньше 3). Написать конструктор, который создаёт бодибилдера
#-хиляка, у которого все мышцы по нулям. Потом создать для бодибилдера метод прокачать
#мышцу: в качестве параметра передаётся название мышцы, которое совпадает с названием свойства
#соответствующей группы мышц. Метод увеличивает эту мышцу на 1. Создать также метод, который
#выводит на экран «прокачку» бодибилдера: на разных строчках выводит текущее состояние каждой
#группы мышц. Создать двух-трёх бодибилдеров, покачать их и показать их жюри.

class Bodybuilder

	def initialize
		@biceps = 0
		@triceps = 0
		@quadriceps = 0
	end

	def upgrade(muscle)
		if muscle == "biceps"
			@biceps += 1
		elsif muscle == "triceps"
			@triceps += 1
		elsif muscle == "quadriceps"
			@quadriceps += 1
		end	
	end

	def muscle_status
		puts "biceps strength: #{@biceps}"
		puts "triceps strength: #{@triceps}"
		puts "quadriceps strength: #{@quadriceps}"
	end

end

bodybuilder1 = Bodybuilder.new
bodybuilder2 = Bodybuilder.new

3.times do
	bodybuilder1.upgrade("biceps")
end

6.times do
	bodybuilder1.upgrade("triceps")
end

2.times do
	bodybuilder1.upgrade("quadriceps")
end

7.times do
	bodybuilder2.upgrade("biceps")
end

2.times do
	bodybuilder2.upgrade("triceps")
end

4.times do
	bodybuilder2.upgrade("quadriceps")
end

puts "First bodybuilder:"
bodybuilder1.muscle_status
puts
puts "Second Bodybuilder:"
bodybuilder2.muscle_status