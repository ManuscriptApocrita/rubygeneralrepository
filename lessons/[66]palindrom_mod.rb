#Сделать вторую версию программы «Палиндром», которая не учитывает наличие пробелов/знаков
#препинания во фразе

puts "Input a string, which need verify on a palindrom"
original_string = STDIN.gets.chomp

extra_string = original_string.delete(" !.,?;:-").downcase

reverse_string = extra_string.reverse

if reverse_string == extra_string
  puts "It`s palindrom"
else
  puts "No, it`s don`t palindrom"
end