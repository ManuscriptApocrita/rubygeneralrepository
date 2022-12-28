class Game

  def initialize
    @uncorrect_letters = [] 
    @correct_letters = [] 
    @error_counter = 0 
    @word = "" 
    @status = 0
    @counter = 1
    @hints = 0
  end

  def hints
    return @hints.to_s
  end

  def word
    return @word
  end

  def status
    return @status
  end

  def error_counter
    return @error_counter
  end

  def correct_letters
    return @correct_letters
  end

  def uncorrect_letters
    return @uncorrect_letters
  end

  def word_from_file 
    current_path = File.dirname(__FILE__)
    words_path = current_path + "/data/words.txt"

    if File.exist?(words_path)
      words = File.new(words_path, "r:UTF-8")
      @word = words.readlines.sample.chomp.split("")
      words.close
    else
      puts "Word store not found."
    end
  end

  def check_result(bukva) 
    if @status == 2 || @status == 1
      return
    end

    if @correct_letters.include?(bukva) || @uncorrect_letters.include?(bukva)
      return
    end

    if word.include?(bukva)
      @correct_letters << bukva
        if @correct_letters.uniq.sort == word.uniq.sort 
          @status = 1
        end
    elsif bukva.split("") == word
      @status = 1
    elsif bukva == "hint" && @correct_letters.uniq.sort == word.uniq.sort
      @status = 1
    elsif bukva == "hint"
      return
    else
      @uncorrect_letters << bukva
      @error_counter += 1

      if @error_counter >= 5
        @status = 2
      end
    end
  end

  def ask_next_letter
    puts "\nEnter a letter..."

    letter = ""

    while letter == ""

      letter = gets.chomp.downcase

      if letter == "hint" && @counter == 1
        hint = word.uniq.sort - correct_letters.uniq.sort
        correct_letters << hint.sample
        @counter += 1
        @hints += 1
      elsif letter == "hint" && @counter == 2
        hint = word.uniq.sort - correct_letters.uniq.sort
        correct_letters << hint.sample
        @counter += 1
        @hints += 1
      end
    end
    check_result(letter)
  end
end

class ResultPrinter

  def initialize
    @image_status = []

  current_path = File.dirname(__FILE__)
  visual_path = current_path + "/data/visual.txt"

  if File.exist?(visual_path)
    visual = File.new(visual_path, "r:UTF-8")
    @image_status = visual.readlines
    visual.close
  else
    @image_status << "\n [ image not found... ] \n"
  end

  def image_print(error_counter)
    puts "Used attempts: #{@image_status[error_counter]}"
  end

  def print_status(game)
    cls

    puts "Word: #{hide_word_print(game.word, game.correct_letters)}"
    puts "Errors (#{game.error_counter}): #{game.uncorrect_letters.join(", ")}" 
    puts "You have #{(5 - game.error_counter).to_s} attempts"
    image_print(game.error_counter)

    if game.status == 1
      cls

      puts "Success! You completed the game."
      puts "Hidden word: #{game.word.join}"
      puts "Wrong answers: #{game.error_counter}"
      puts "Used #{game.hints} hints"
    elsif game.status == 2 
      cls

      puts "The game is over!"
      puts "Hidden word: #{game.word.join}"
      puts "Wrong answers: #{game.error_counter}"
    end
  end

  def hide_word_print(word, correct_letters)
  result = ""

    for item in word
      if correct_letters.include? item 
        result += item + " "
      else
        result += "_ " 
      end
    end
      return result 
  end

  def cls
    system('cls') || system('clear')
  end
end

end