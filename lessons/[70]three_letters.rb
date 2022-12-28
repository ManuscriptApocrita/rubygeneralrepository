#Написать программу, которая читает текст их файла и считает количество слов из трех букв

file = File.read("data/words.txt")

cleaned_file = file.gsub(/[.,!?;:]/, "")

words = cleaned_file.split

array = []

for item in words
	if item =~ /^...$/
		array << item
	end
end

puts array.length