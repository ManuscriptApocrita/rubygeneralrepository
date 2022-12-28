
puts "This program is designed to accumulate textual information."
puts "It is sorted by date and number of entered information."
puts

current_path = File.dirname(__FILE__)

all_lines = []

line = nil

while line != 'end'
  line = STDIN.gets.encode('UTF-8').chomp

  all_lines << line
end

time = Time.now

file_name = time.strftime('%Y-%m-%d')

time_line = time.strftime('%H:%M')

separator = '----------------------------'

file = File.new(current_path + '/' + file_name + '.txt', 'a:UTF-8')

file.print("\n\r" + time_line + "\n\r")

all_lines.pop

for item in all_lines do
  file.puts(item)
end

file.puts(separator)

file.close

puts '...'
puts "Ваша запись сохранена в файле #{file_name}.txt"
puts "Запись сделана в #{time_line}"
puts