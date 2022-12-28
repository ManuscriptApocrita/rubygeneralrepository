#Исправить ошибку в демонстрационной программе
#В методе sklonenie есть один баг (ошибка) — он неправильно работает с числами от 11 до 14.
#Например, вместо 11 негритят он вернет 11 негритенок, а вместо 14 негритят — 14 негритенка.

def sklonenie(number, krokodil, krokodila, krokodilov)
  if number == nil || !number.is_a?(Numeric)
    number = 0
  end

  ostatok = number % 10

  #####
  if number >= 11 && number <= 14
    return krokodilov
  end
  #####
  
  if ostatok == 1
    return krokodil
  end

  if ostatok >= 2 && ostatok <= 4
    return krokodila
  end

  if (ostatok >= 5 && ostatok <= 9) || ostatok == 0
   return krokodilov
  end
end

skolko = ARGV[0].to_i

puts "#{skolko} #{sklonenie(skolko, 'негритёнок', 'негритёнка', 'негритят')} " \
  "#{sklonenie(skolko, 'пошел', 'пошли', 'пошли')} купаться в море!"