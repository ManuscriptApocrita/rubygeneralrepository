# encoding: utf-8

# Объявляем переменную hello и присваеваем ей значение - объект строку
hello = 'Привет, пацаны!'

# Объявляем переменную hello2 и присваеваем ей пустой объект nil
# С помощью ключевого слова Руби - nil
hello2 = nil

# Присваиваем этой переменной другое значение - новую строку
hello2 = 'Привет, девченки!'

# Объявляем переменную hello3 и присваиваем ей значение переменной hello
hello3 = hello

# Теперь обе переменные hello3 и hello указывают на один и тот же объект:
# строку "Привет, пацаны!"

# ВАЖНО: Сам объект не дублируется мы просто одному объекту дали два разных
# "имени", но оба они указывают на один и тот же объект

# Новая переменная devchonki, ей тоже присвоим пустой объект
devchonki = nil

# Условный оператор проверяет условие: не является ли является ли переменная
# devchonki пустой (указывающей на пустой объект nil)

# Если переменная devchonki не указывает на nil, а указывает хоть на
# какой-нибудь объект, будет выполнятся код от ключевого слова if
# До ключевого слова else

# Если переменная devchonki указывает на nil, то будет выполнятся код от
# ключевого слова else до ключевого слова end

if devchonki != nil # оператор != означает "не равно"
  puts hello2
else # иначе
  puts hello
end # конец if

# После завершения кода в операторе if программа идет дальше до тех пор,
# пока не выполнит все инструкции...


puts "\n\n---Иллюстрация работы с переменными, как ссылками на объект ------"

# Иллюстрация работы с переменными и объектом, на который они ссылаются

# Сейчас переменные hello и hello3 ссылаются на один и тот же объект строку 'Привет, пацаны!'
# А переменная hello2 на объект строку 'Привет, девченки!'

# Для проверки выводим значение переменных hello и hello3
puts "\nТекущие значения переменных:"
puts "hello = " + hello
puts "hello3 = " + hello3

hello.replace "Привет, пацаны и девченки!"
# Заменяем значение строки hello с помощью метода str.replace(other_str)   #-> other_str
# теперь объект на который ссылаются пермеменные hello и hello3 это строка "Привет, пацаны и девченки!"

# Выводим значения переменных hello и hello3
puts "\nЗначения переменных, после замены содержимого объекта, на который они ссылаются:"
puts "hello = " + hello
puts "hello3 = " + hello3

hello = "Привет, пацаны!" # Создаётся новый объект, переменная переводится на него
# Если просто присвоить переменной новое значение, Ruby создаст объект с новым значением  
# и поместит в (уже существующую) переменную ссылку на тот объект

# Теперь перменные hello и hello3 ссылаются на разные объекты

# Выводим значения переменных hello и hello3
puts "\nЗначения переменных, после присвоения переменной hello нового значения:"
puts "hello = " + hello
puts "hello3 = " + hello3

puts "\n---Иллюстрация работы с переменными, как ссылками на объект ------"


puts 'До свидания'

####

# encoding: utf-8

# Строка имеет метод length, который возвращает количество символов в строке
puts 'Я объект типа строка!'.length

# Целое число имеет метод to_f, который возвращает это же число, но
# превращенное в другой тип "вещественное число" (или число с плавающей точкой)
puts 17.to_f

# Чем целые числа отличаются от вещественных (почему это разные типы объектов):
#
# http://ru.wikipedia.org/wiki/Вещественные_числа
# http://ru.wikipedia.org/wiki/Целое_число

# Описание классов String (строка), Fixnum (целое число), Float (вещественное
# число или число с плавающей точко) и доступных объектам этих классов свойств
# из документации Руби:
#
# http://www.ruby-doc.org/core-2.4.0/String.html
# http://www.ruby-doc.org/core-2.4.0/Fixnum.html
# http://www.ruby-doc.org/core-2.4.0/Float.html