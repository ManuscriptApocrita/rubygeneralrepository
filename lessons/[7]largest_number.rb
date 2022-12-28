#В программе объявить две численные переменные, разные по значению. Вывести их на экран.
#Затем с помощью оператора if выбрать наибольшее из них и вывести его на экран. 
#Если числа равны — программа должна сообщить об этом.

a = 100.72
b = 41

puts a
puts b

if b == a
  puts "the numbers are equal"
elsif a > b
  puts "Largest number: " + a.to_s
elsif b > a
  puts "Largest number: " + b.to_s
end