#Модифицировать прогроамму так, чтобы иногда выпадало ребро. Вероятность 1/10

if rand(11) == 10 
	puts "The coin is on edge!"
else
	if rand(2) == 1
		puts "Eagle!"
	else
		puts "Tail!"
	end
end