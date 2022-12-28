#Написать с помощью case программу, которая отвечает на вопрос, кто был главным врагом 
#указанного героя.

puts "Which character's enemy do you want to know?"
puts "Available: Batman, Sherlock Holmes, Pinocchio, Frodo Baggins, Mozart"

user_input = gets.chomp.downcase

case user_input
	when "бэтмен", "batman"
		puts "his enemy: Joker"
	when "шерлок холмс", "sherlock holmes"
		puts "his enemy: Professor Moriarty"
	when "буратино", "buratino"
		puts "his enemy: Karabas-Barabas"
	when "фродо бэггинс", "frodo baggins", "frodo"
		puts "his enemy: Sauron"
	when "моцарт", "mozart"
		puts "his enemy: Salieri" 
	else
		puts "Failed to find an enemy character."
end