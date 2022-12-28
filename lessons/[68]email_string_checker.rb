#Написать программу, которая проверяет является ли введенный текст email-ом.

email_checker = /^[\w\d_+.\-]+@[\w\d\-]+(\.[\w\d\-]+)*\.[\w]+$/

puts "Input your email for examine..."
user_input = gets.chomp

if user_input.match(email_checker)
	puts "Correct!"
else
	puts "Incorrect!"
end