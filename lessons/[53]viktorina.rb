#Создать два файла: один с вопросами (по одному вопросу на одну строчку файла), другой с
#ответами на эти вопросы (также на каждой строчке один ответ). Написать программу, которая
#считывает оба файла и задает пользователю в консоли последовательно все эти вопросы.
#Задав вопрос, программа ждет ответа пользователя в консоли. А затем сравнивает с правильным
#ответом и сообщает, правильно ответил пользователь, или нет. Если ответ неверный, программа
#сообщает какой ответ правильный. В конце сообщает результат — сколько было дано правильных ответов.

current_path = File.dirname(__FILE__)

questions_path = current_path + "/data/questions.txt"
answers_path = current_path + "/data/answers.txt"

unless File.exist?(answers_path) && File.exist?(questions_path)
  abort "One of two`s file`s not found..."
end

questions_file = File.new(questions_path, "r:UTF-8")
array_questions = questions_file.readlines
questions_file.close

answers_file = File.new(answers_path, "r:UTF-8")
array_answers = answers_file.readlines
answers_file.close

error_counter = 0

puts array_questions[0]
user_input = gets.chomp.downcase

if user_input == array_answers[0].chomp || user_input == "грифиндор"
	puts "Correct answer!"
else
	error_counter += 1
	puts "You wrong..."
end

puts array_questions[1]
user_input = gets.chomp

if user_input == array_answers[2].chomp
	puts "Correct answer!"
else
	error_counter += 1
	puts "You wrong..."
end

puts array_questions[2]
user_input = gets.chomp.downcase

if user_input == array_answers[1].chomp
	puts "Correct answer!"
else
	error_counter += 1
	puts "You wrong..."
end

if error_counter == 0
	puts "Congrulations, all answers - correct!"
else
	puts "\n  So, your wrong answers: #{error_counter}"
end