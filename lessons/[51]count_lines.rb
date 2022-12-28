#Написать программу, которая считает сколько в указанном файле строк всего, сколько пустых строк,
#а также выводит на экран последние 5 строк этого файла. Пользователь вводит название файла в
#качестве параметра консоли при запуске. Если же файл не найден, то сообщает об этом пользователю.
#Проверьте работу программы на различных вами же придуманных файлах.

file_name = ARGV[0]

if file_name == nil
  abort "Write the filename as a program argument!"
end

unless File.exist?(file_name)
  puts "File not found!"
end

file = File.new(file_name, "r:UTF-8")
lines = file.readlines
file.close

puts "Opened: #{file_name}"

nilstring = 0
last_five_strings = []

lines.each_with_index do |line, index|
  if line == "\n"
    nilstring += 1
  end

    if lines.length - index <= 5
      last_five_strings << line
    end
end

puts "Lines in a file: #{lines.length}"
puts "Empty lines: #{nilstring.to_s}"

if last_five_strings.length == 1
puts "Last #{last_five_strings.size} string: "
puts "---------------------------------------"
else
  puts "Last #{last_five_strings.size} strings"
  puts "---------------------------------------"
end
  
while
puts last_five_strings[0..5]
end