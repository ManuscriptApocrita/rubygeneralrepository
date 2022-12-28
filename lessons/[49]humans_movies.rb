#Объединяем людей и фильмы. Напишите программу, которая будет использовать одновременно два
#класса из предыдущих заданий. Добавьте в класс «Человек» поле, хранящее любимый фильм данного
#человека. В это поле будет записываться объект класса «Фильм». Также добавьте в класс «Человек»
#два метода: один будет записывать значение в это поле, другой будет возвращать текущее значение
#этого поля. Создайте трех людей, каждому из них назначьте (с использованием нового метода) по
#одному фильму и выведите всех трех людей и их фильмы на экран.

class Movie

	def initialize(movie_title, director_name)
		@movie_title = movie_title
		@director_name = director_name
	end

	def movie_title
		return @movie_title
	end

	def director_name
		return @director_name
	end

end

class Human
	def initialize(first_name, middle_name, age)
		@first_name = first_name
		@middle_name = middle_name
		@age = age
		@favorite_movie = nil
	end

	def favorite_movie=(favorite_movie)
		@favorite_movie = favorite_movie
	end

	def old?
		return @age >= 60
	end

	def full_name
		if old? 
			return "#{@first_name} #{@middle_name}"
		else
		return "#{@first_name}"
		end
	end

	def favorite_movie
		return @favorite_movie
	end

end

person1 = Human.new("Максим", "Оладьевич", 34)
person2 = Human.new("Арсений", "Хабибулаевич", 62)
person3 = Human.new("Терек", "Артурович",17)

person1.favorite_movie = Movie.new("Avatar", "director1")
person2.favorite_movie = Movie.new("Jaws", "director2")
person3.favorite_movie = Movie.new("Batman", "director3")

puts "There are three people in the base:"

puts "#{person1.full_name} with favorite film: #{person1.favorite_movie.movie_title}"
puts "#{person2.full_name} with favorite film: #{person2.favorite_movie.movie_title}"
puts "#{person3.full_name} with favorite film: #{person3.favorite_movie.movie_title}"