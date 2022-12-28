# encoding: utf-8
#
# Программа, демонстрирующая как читать файлы в руби построчно.
#
# Сначала определим путь от текущей до той папки, в которой лежит текущая
# программа "read_lines.rb". Мы сделаем это с помощью специального служебного
# объекта Ruby __FILE__ и метода класса File.dirname.
current_path = File.dirname(__FILE__)

# Обратите внимание, что в current_path будет лежать относительный путь до
# папки, в которой лежит программа. Если Вы запускаете программу из той же
# папки, где находится программа, то в current_path будет лежать строка ".".
# Если вам по какой-то причине нужен полный путь к папке с программой,
# используйте.
#
# current_path = __dir__
# current_path = Dir.pwd

# Мы знаем, что наши данные лежат в подпапке /data/, поэтому полный путь к файлу
# с афоризмами будет таким:
file_path = current_path + '/data/aphorizmus.txt'

# Перед открытием файла надо проверить — существует ли файл, методом exist? у
# класса File.
if File.exist?(file_path)
  # Как всегда, открываем файл на чтение с помощью встроенного в руби класса
  # File и его конструктора.
  file = File.new(file_path, 'r:UTF-8')

  # В цикле читаем строчку за строчкой из файла, вызывая метод gets у объекта
  # file. Этот метод при каждом новом вызове возвращает следующую строку в
  # файле, до тех пор пока не дойдет до конца, тогда он вернет nil. Как только
  # он вернет nil, все выражение в условии цикла (line = file.gets) станет
  # равным nil и условие перестанет выполнятся, цикл закончится.
  #
  # while line = file.gets
  #   puts line
  # end

  # Другой (более трушный) способ — просто вызвать у объекта file метод
  # readlines, который вернет нам массив (Array) строк файла.
  #
  # Обратите внимание, что на конце каждой строки файла находится перенос
  # ("\n"), что логично. Нам это сейчас не важно, но вы помните на будущее.
  lines = file.readlines

  # Как только все данные прочитаны, файл нам больше не нужен, следует его
  # закрыть. Все, что мы уже прочитали (переменная lines) – останется с нами
  # после закрытия. Правильно закрывать файл как только он нам больше не нужен.
  file.close

  # Выведем случайную строчку из массива нашим любимым методом sample.
  puts 'Афоризм дня:'
  puts lines.sample
else
  puts 'Файл не найден'
end

# И опять у нас получился очень длинный if, куда лучше было бы проверить, что
# файл не найден и вывалится с ошибкой.

####

# encoding: utf-8
#
# Программа, демонстрирующая как читать файлы в руби.
#
# Перед открытием файла надо проверить — существует ли файл, методом exist? у
# класса File.
if File.exist?('./data/aphorizmus.txt')
  # Если файл существует, открываем его. Делаем это с помощью Встроенного в руби
  # класса File, в конструкторе которому передается путь к файлу.
  file = File.new('./data/aphorizmus.txt', 'r:UTF-8')

  # Теперь, когда у вас в переменной file объект класса File, мы можем
  # прочитать содержимое файла с помощью метода read у объекта file и сохранить
  # его в переменной content — это будет одна большая строка с символами
  # переноса и т.д.
  content = file.read

  # Выводим эту строку (все содержимое файла) на экран
  puts content
else
  puts 'Файл не найден'
end

# Обратите внимание, какой длинной получился у нас if. Обычно так не пишут, мы
# здесь привели этот код для примера. Правильнее было бы завершить программу с
# ошибкой, если файл не найден, а весь остальной код писать на том же уровне:
#
# unless File.exist?("./data/aphorizmus.txt")
#   abort "Файл не найден"
# end
#
# file = File.new(...)
#
# Конструкция unless работает также, как и if, только срабатывает наоборот, если
# условие НЕ выполнено. В нашем случае, мы вылетим с ошибокй, если файл НЕ
# существует. Удобно, не так ли! ;)