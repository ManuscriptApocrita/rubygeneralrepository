# Подключаем библиотеку для работы с протоколом HTTP. Позже в курсе вы узнаете
# о нем подробнее.
# Для работы на Ruby версии 3.0 и выше необходимо доставить gem addressable
# и подключить его, т.к. net/http в Ruby версии 3.0 и выше не поддерживает метод encode
require 'net/http'
#require 'addressable/uri'

# Метод, word_exits? проверяет, есть ли статья на Викисловаре с таким словом
def word_exists?(word)
  # Формируем адрес страницы для проверки и записываем в переменную url.
  uri = "https://ru.wiktionary.org/wiki/" + URI.encode_www_form_component(word) 

  #Для использования в Ruby 3.0 и выше необходимо использовать следующий код. Делает тоже самое, что и net/http.
  # url = Addressable::URI.encode("https://ru.wiktionary.org/wiki/#{word}")

  # Достаем содержимое страницы по указанному адресу и записываем в переменную
  # wiktionary_page. Обратите внимание, что мы меняем кодировку на utf-8, чтобы
  # мы могли корректно работать с русскими буквами.
  wiktionary_page = Net::HTTP.get(
    URI(uri)
  ).force_encoding('UTF-8')

  #Для использования в Ruby 3.0 и выше необходимо использовать следующий код.
  # Encode убрали выше для использования в gem addressable

  # wiktionary_page = Net::HTTP.get(
  #    URI.parse(url)
  #  ).force_encoding('UTF-8')

  # С помощью регулярного выражения проверяем, есть ли на странице текст о том,
  # что такого слова нет.
  if wiktionary_page =~ /текст на данной странице отсутствует/
    # Если статьи про слово нет, значит надо вернуть false, такого слова нет
    return false
  else
    # Если такой текст на странице не найдет, значит статья есть и слово можно
    # засчитывать. Возвращаем true.
    return true
  end
end

# Метод, который формирует строку-шаблон типа "с.ат"
def random_regexp_string
  # Берем несоклько реально существующих слогов (можете дописать свои)
  patterns = ['торф', 'скат', 'свал', 'крик', 'спир']

  # Выбираем произвольных слог (например, скат)
  pattern = patterns.sample

  # Выбираем произвольную букву в нем (например, с или т)
  letter = pattern.split('').sample

  # Заменяем все вхождения этой буквы на точку (например, .кат или ска.)
  return pattern.gsub(letter, '.')
end

####

# encoding: utf-8
#
# Игра: угадай слово по шаблону. Пример использования регулярных выражений.
#
# (с) rubyrush.ru

# Этот код необходим только при использовании русских букв на Windows
if Gem.win_platform?
  Encoding.default_external = Encoding.find(Encoding.locale_charmap)
  Encoding.default_internal = __ENCODING__

  [STDIN, STDOUT].each do |io|
    io.set_encoding(Encoding.default_external, Encoding.default_internal)
  end
end

# Получаем произвольный шаблон, строку вида "ск.т" с помощью одного из
# вспомогательных методов random_regexp_string.
regexp_string = random_regexp_string

# Выводим пользователю условия игры и рассказываем, как закончить игру. Шаблон
# формируем с помощью второго вспомогательного метода regexp_string.
puts 'Придумайте как можно больше слов, содержащих шаблон:'
puts
puts regexp_string.gsub('.', '*')
puts
puts 'Для выхода наберите X'

# В этой переменной будет количество очков пользователя — количество реально
# существующих слов, подходящих под шаблон.
count = 0

# Основной цикл игры делаем с помощью конструкции loop, подробнее про неё можно
# почитать в документации ruby
#
# https://ruby-doc.org/core-2.4.0/Kernel.html#method-i-loop
loop do
  # Спрашиваем у пользователя слово и сохраняем его в переменную word
  word = STDIN.gets.chomp

  # Если пользователь ввел X или x — выходим из цикла с помощью break — это
  # единственный способ выйти из цикла loop.
  if word.downcase == 'x'
    break
  end

  # Если пользователя ввел какое-то слово, проверяем, существует ли такое слово
  # в русском языке с помощью вспомогтаельного метода word_exists?.
  if word_exists?(word)
    # Если существует, смотрим, подходит ли оно под шаблон. Для этого формируем
    # из строки-шаблона регулярное выражение, поставив его в два слеша.
    if word =~ /#{regexp_string}/
      # Если слово подходит, игроку засчитываем очко
      puts '.. OK =)'
      count += 1
    else
      # Если не подходит, не засчитываем
      puts '.. неа =('
    end
  else
    # Если такого слова в русском языке нет, пишем об этом
    puts 'Нет такого слова в Викисловаре'
  end
end

# Выводим пользователю его счет
puts "Игра закончена, ваш счет: #{count}"