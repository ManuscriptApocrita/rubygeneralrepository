require_relative "gtwlib"

uncorrect_letters = [] #Накопительный массив неотгаданных букв
correct_letters = [] #Накопительный массив отгаданных букв 
error_counter = 0 #Счетчик ошибок
array = ["chair", "table", "apple"]
word = array.sample.split("") #Выбирается случайное слово из массива и раскладывается по-буквенно через разделитель ""

puts "The game: <Guess the word>, version 1.0" 
puts
puts "Rules: You have 5 attempts to guess the word by entering letters."
puts "You can also guess the word immediately by entering it in full."

while error_counter < 5 do #Есть 5 попыток

	puts "Word: #{hide_word_print(word, correct_letters)}"
    puts "Errors (#{error_counter}): #{uncorrect_letters.join(", ")}" 
    puts "Enter a letter: "

  	user_input = gets.chomp.downcase

  	system('cls') || system('clear')

  	status = check_result(word, correct_letters, uncorrect_letters, user_input)

  	if status == 0 #Если значение, которое вернул метод будет 0, то есть пользователь ошибся - к счетчику ошибок прибавляется единица
		error_counter += 1
  	elsif status == 1 #Если пользователь по-буквенно отгадывал слово, то на момент последней правильно введенной буквы им - будет победа. Далее выводятся статусные строки
  		puts "Success! You completed the game."
		puts "Hidden word: #{word.join}"
		puts "Wrong answers: #{error_counter}"
		break
	elsif status == 2 #Если пользователь ввёл слово полностью, не отгадывая по кусочку - победа.
		puts "Success! You completed the game."
		puts "Hidden word: #{word.join}"
		puts "Wrong answers: #{error_counter}"
    	breaks
 	end
end

	if error_counter == 5 #Если цикл закрылся - попытки исчерпаны, вывожу сообщение и статус
	puts "Game over!"  
	puts "Hidden word: #{word.join}"
	puts "Wrong answers: #{error_counter}"
	end