def hide_word_print(word, correct_letters) #Метод вывода на экран слова, учитывая его отгаданные и неотгаданные буквы
  result = ""

  for item in word #Для переменной в массиве "word" 
    if correct_letters.include? item #Если отгаданная буква есть в сравниваемой букве - открываю для наблюдения букву
      result += item + ""
    else
      result += "_ " #В ином случае буква будет заменена прочерком
    end
  end
  return result #Возвращает получившуюся после перебирания строку
end

def check_result(word, correct_letters, uncorrect_letters, user_input) #Метод проверки возможных результатов

  if word.include? user_input #Если массив букв загаданного слова включают введенную букву - идет запись в массив угаданных букв
    correct_letters << user_input
  elsif user_input == word.join("") #Пользователь может ввести сразу слово, тогда проверка выше не сработает, поэтому добавлена еще и эта.
    return 2  
  elsif correct_letters.uniq.sort == word.uniq.sort #Массив загаданного слова (прежде разложенны на буквы) и массив угаданных букв сортируются по алфавитному порядку,
    return 1                                        #отсекаются повторяющиеся буквы. Если равны между собой, то слово отгаданно. 
  else
    uncorrect_letters << user_input #Если пользователь ошибся, его ответ уходит в ошибки
    return 0
  end

end