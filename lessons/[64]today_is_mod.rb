#Улучшить программу из ранних уроков, которая говорит, выходной ли сегодня.Сделать так,
#чтобы программа говорила, что сегодня выходной не только если сегодня суббота или воскресенье,
#но и если сегодня один из государственных праздников. Список праздничных дней на ближайший год
#взять в интернете и записать в файл, который будет использовать программа.

weekends_path = File.dirname(__FILE__) + "/data/weekend_days_ru.txt"

file = File.new(weekends_path, "r:UTF-8")

weekends_time = file.readlines

file.close

for item in weekends_time
	item.chomp!
end

time = Time.now
time_formatted = time.strftime("%d.%m")
day = time.wday
puts time_formatted

if weekends_time.include?(time_formatted)
puts "Today is a public holiday!"
	else

		if day == 6 || day == 0
			puts "Today is holiday!"
		elsif
			puts "Today is work day!"
		end
end