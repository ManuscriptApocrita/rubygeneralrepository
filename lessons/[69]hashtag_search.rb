#Написать программу, которая «вытаскивает» из строки, введенной пользователем хэштеги.

puts "Input hashtags..."

user_input = gets.chomp

hashtags_search = /#\w+/

find_hashtags = user_input.scan(hashtags_search)

puts "Finded hashtags: #{find_hashtags.join("; ")}"