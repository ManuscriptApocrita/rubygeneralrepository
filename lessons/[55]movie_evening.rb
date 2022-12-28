#Написать программу, которая рекомендует фильм к просмотру, доставая его произвольно из файла
#со списком фильмов. Создать файл, со списком фильмов (одна строка - одно название). И написать
#программу, которая берёт произвольную строку и выводит название фильма на экран.

current_path = File.dirname(__FILE__)

file_path = current_path + "/data/movies.txt"

if File.exist?(file_path)

  file = File.new(file_path, "r:UTF-8")

  movies = file.readlines

  file.close

else
  puts "File not found"
end

system("cls") || system("clear")

number = rand(movies.size)

puts "Today I advise you to watch:"
puts movies[number]