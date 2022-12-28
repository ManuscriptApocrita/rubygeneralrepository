#Написать программу по выявлению площади круга

def square_of_circle(radius)
	return 3.14159 * radius * radius
end

puts "Input radius of circle:"
radius = gets.to_f

puts "Area of a circle: " + square_of_circle(radius).to_s

puts "Input radius of second circle:"
radius = gets.to_f

puts "Area of a circle: " + square_of_circle(radius).to_s