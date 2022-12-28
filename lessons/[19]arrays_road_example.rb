# encoding: utf-8

# Программа начинает работу
puts 'Start'

# Программа "засыпает" (ничего не делает) на 1 секунду
sleep 1

# Программа продолжает работу
puts 'Первый километр'
sleep 1

puts 'Второй километр'
sleep 1

puts 'Третий километр'
sleep 1

puts 'Finish!'

# Программа "ждет" от пользователя ввода и нажатия Enter
gets

####

# encoding: utf-8

# Используемые операции:
# * создать/прочесть
# * добавить элемент
# * выбрать элемент по индексу
# * удалить элемент
# * удалить по индексу

# Объявляем массив, содержащий четыре строки с названиями фруктов
fruits = ['банан', 'апельсин', 'манго']

# Выводим этот массив на экран, переведя его в строку методом to_s
puts 'Массив, заданный в коде программы: ' + fruits.to_s

# Создаем другой массив (пустой), этот объект тоже имеет тип Array
basket = []

# Добавляем в этот массив строку "apple" (яблоко)
basket << 'apple'

# Добавляем в этот массив строку "cherry" (вишня)
basket.push('cherry')

# Добавляем сразу два объекта (строки) одним вызовом метода push
basket.push('mellon', 'mango')

# Выводим массив на экран (помним про to_s)
puts basket.to_s

# Удаляем из массива элемент, который является строкой "apple" (яблоко)
basket.delete('apple')

# Снова выводим массив, чтобы убедиться, что яблока нет
puts basket.to_s

# Выводим нулевой (первый) элемент массива (нумерация идет с нуля)
puts basket[0]

# Выводим элемент с индексом два (третий по счету)
puts basket[2]

# Удаляем элемент с индеском 2
basket.delete_at(2)

# Снова выводим получившийся массив с оставшимися элементами
puts basket.to_s