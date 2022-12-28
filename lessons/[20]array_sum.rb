#Объявить в программе два разных массива строк. Создать третий массив так, чтобы он состоял
#из всех элементов первого и второго массивов, потом вывести все три массива

womans_names = ["Евкладия", "Фрося", "Мария"]
mans_names = ["Никита", "Кларк", "Андрей"]

all = womans_names + mans_names

puts "Mans: " + mans_names.to_s
puts "Womans: " + womans_names.to_s
puts "All: " + all.to_s