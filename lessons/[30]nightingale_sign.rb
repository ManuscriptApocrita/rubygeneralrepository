#Написать программу, которая определяет, поют в данный момент соловьи или нет.
#Они поют при температуре от 22 до 30 градусов в любое время года. Летом же от 15 до 35.

temperature = ARGV[0]
season = ARGV[1]

if temperature == "" || temperature == nil
  puts "Input temperature."
  temperature = gets.to_i
end

if season == "" || season == nil
  puts "Input season."
  puts "0 - winter, 1 - autumn, 2 - spring, 3 - summer"
  season = gets.to_i
end

if season == 3 
 if temperature >= 15 && temperature <= 35
    puts "Go to the park, nightingales sing!"
  else
    puts "The conditions are unsuitable, the nightingales do not sing even now ..."
  end
else
  if temperature >= 22  && temperature <= 30
    puts "Nightingales sing!"
  else
    puts "Nightingales are silent, or busy with their own affairs."
  end
end