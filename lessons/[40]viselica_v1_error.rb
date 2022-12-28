#В программе «Виселица» есть важный недостаток: она не считает буквы е и ё одной буквой.
#А следовало бы. Было бы гораздо удобнее, если бы она принимала эти буквы за одну и открывала
#заодно и все буквы ё, если введена е и наоборот. Аналогично с буквами и и й.
#Исправьте программу так, чтобы реализовать эту возможность.

def cls
  system('cls') || system('clear')
end

def get_letters

  slovo = ARGV[0]

  if slovo == nil || slovo == ''
    abort 'Для игры введите загаданное слово в качестве аргумента при ' \
      'запуске программы'
  end

  return slovo.encode('UTF-8').split('')
end

def get_user_input

  letter = ''

  while letter == ''
    letter = STDIN.gets.encode('UTF-8').chomp
  end
  return letter
end

def check_result(user_input, letters, good_letters, bad_letters)

  if good_letters.include?(user_input) || bad_letters.include?(user_input)
    return 0
  end
####
  if letters.include? user_input || 
    (user_input == "е" && letters.include?("ё")) ||
    (user_input == "ё" && letters.include?("е")) ||
    (user_input == "и" && letters.include?("й")) ||
    (user_input == "й" && letters.include?("и"))
####
    good_letters << user_input

    if good_letters.uniq.sort == letters.uniq.sort
      return 1
    else
      return 0
    end
  else
    bad_letters << user_input
    return -1
  end
end

def get_word_for_print(letters, good_letters)
  
  result = ''

  for item in letters do
    if good_letters.include?(item)
      result += item + ' '
    else
      result += '__ '
    end
  end
  return result
end

def print_status(letters, good_letters, bad_letters, errors)

  puts "\nСлово: #{get_word_for_print(letters, good_letters)}"

  puts "Ошибки (#{errors}): #{bad_letters.join(', ')}"

  if errors >= 7
    puts 'Вы проиграли :('
  else
    if good_letters.uniq.sort == letters.uniq.sort
      puts "Поздравляем, вы выиграли!\n\n"
    else
      puts 'У вас осталось попыток: ' + (7 - errors).to_s
    end
  end
end