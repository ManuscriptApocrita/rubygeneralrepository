#Отрезать N элементов от массива. Написать метод, который возвращает массив из первых N элементов
#другого массива, который передан в метод в качестве параметра.

def arraycut(array, number)
	if number > array.size 
		abort "Input correct answer"
	else
		counter = 0
		result_array = []
		while counter < number
			result_array << array[counter]
			counter += 1
		end
 	end
    return result_array
end

original = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

puts "That`s what is: " + original.to_s 
puts "How many first elements should be left?"
number = gets.to_i


puts "Here result: " + arraycut(original, number).to_s