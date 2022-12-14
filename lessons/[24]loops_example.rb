# encoding: utf-8

# Массив яиц, 0 - значит целое, любое другое значение - битое яйцо
eggs = [0, 0, 0, 0, 1, 1, 0, 0, 1, 23, 0, 2, 0, 25, 0, 0, 1, 0]

# Объявляем массив, куда складывать хорошие яйца
good_eggs = []

# Инициализируем счетчик битых яиц
broken_count = 0

# Цикл по всем элементам массива eggs. Тело цикла будет выполнено столько раз,
# сколько элементов в массиве eggs. Каждый раз при выполнении тела цикла будет
# один из элементов массива (начиная с нулевого) будет в переменной item.
for item in eggs do
  if item != 0
    # Если яйцо плохое счетчик плохих увеличивается на 1
    broken_count += 1
  else
    # Если хорошее, яйцо добавляется в другой лоток
    good_eggs << 0
  end
end

# Выводим результаты
puts 'Битых яиц оказалось ' + broken_count.to_s + ' из ' + eggs.size.to_s
puts 'Вот лоток с хорошими яйцами'
puts good_eggs.

#####

# encoding: utf-8

# Условие true — постоянное (константа), не зависит ни от каких переменных,
# а значит все время имеет одно и то же значение. В независимости от значений
# других переменных программы.
#
# То есть цикл будет повторяться вечно. По определению.
#
# Никогда не делайте так, пока не станете знатоком программирования!

while true do
  # Выводим текущее время, используя возможности объектов типа Time в руби
  print "\r" + Time.now.strftime('%H:%M:%S')

  # Ждем 1 секунду
  sleep 1
end

# Программа никогда не дойдет до сюда, потому что не выйдет из цикла
puts 'Я строка, до которой никогда не дойдет программа :('

# PS:
# В консоли прервать вечную программу можно комбинацией клавишь Ctrl+C
#
# Вечная программа не обязательно значит зависшая. Иногда это нормальное
# поведение. Например, если это какой-нибудь сервер, который ждет запрос извне.

####

# encoding: utf-8

# Сделаем переменную с массивом, в который будем складывать введенные имена.
names = []

# Заранее объявляем переменную, которую используем в условии цикла
user_input = nil

# Пока не ввели пустую строчку, крутимся в цикле
while user_input != '' do
  # Спрашиваем у пользователя имя
  user_input = gets.encode('UTF-8').chomp

  # Добавляем имя в массив имен
  names << user_input
end

# Выводим результаты
for item in names do
  # Выводим имя, которое сейчас находится в item и ждем
  puts 'C нами ' + item
  sleep 1

  # Если имя совпало со строкой Элис, пишем об этом
  if item == 'Элис'
    puts 'Элис??? Кто такая Элис?'
    sleep 1
    break # Специальная команда досрочного прерывания цикла
  end
end

puts 'Что это за девочка и где она живет?'
sleep 1
puts 'А вдруг она не курит? А вдруг она не пьёт?'
sleep 1
puts 'А мы с такими рожами возьмем да и припрёмся к Элис... :)'

####

# encoding: utf-8

# Объявляем переменную и задаем начальное значение. Попробуйте удалить эту
# строку и выполнить программу.
count = 1

while count <= 5 do
  # Выводим текущее значение счетчика count
  puts count

  # Операция += означает "прибавить и присвоить". К текущему значению count
  # будет добавлен 1 и результат будет записан в count
  count += 1

  # Театральная пауза после каждого слова :)
  sleep 0.5
end

puts 'Я иду искать!'

# Несколько способов пройтись по всем элементам массива:
#
# Универсальный способ
#
# i = 0
# length = questions.length
#
# while i < length do ...
#   # внутри цикла выбираем элемент массива questions[i]
#   # после чего увеличиваем значение i на единицу - т. е.
#   # в следующем шаге цикла будет выбран следующий элемент массива
# end
#
# Способ, характерный для ruby, используя встроенный метод 'each'
#
# questions.each do |item|
#   # в переменную item записывается следующий элемент массива
# end