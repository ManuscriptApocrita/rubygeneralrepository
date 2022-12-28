#С помощью модуля Math вывести на экран значения двух фундаментальных констант: длины окружности
#к её диаметру pi и основание натурального логарифма e, а после этого убедиться, что сумма синуса
#+ косинуса угла pi равны -1 (вывести сумму на экран).

puts "Pi = #{Math::PI}"
puts "E = #{Math::E}"

pi = Math::PI
e = Math::E

answer = Math.sin(pi) + Math.cos(e)

puts "Sin pi + cos pi = #{answer.round(0)}"