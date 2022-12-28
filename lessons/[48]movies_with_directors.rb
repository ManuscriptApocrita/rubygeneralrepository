#Написать программу, помогающую выбрать какой фильм сегодня просмотреть.

class Movie

	def initialize(director_name)
		@movie_title = []
		@director_name = director_name
	end

	def write_movie(film)
		@movie_title << film
	end

	def movie_title
		return @movie_title.sample
	end

	def director_name
		return @director_name
	end

end

puts "Enter your favorite director's last name"
director_name = gets.chomp
counter = 0

while counter < 3
	puts "Enter his good movie"
	movie = gets.chomp

	film = Movie.new(director_name)
	film.write_movie(movie)

	counter += 1
end

puts "Recommended to watch tonight: #{film.movie_title}"
puts "This director's: #{film.director_name}"