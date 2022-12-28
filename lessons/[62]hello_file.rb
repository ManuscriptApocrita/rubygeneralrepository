#Напиcать программу, которая здороваеся в файл hello.txt (пишет строку "Hello, file!" в него).

file = File.new("data/HIfile.txt", "a:UTF-8")

file.puts("Hello, file!")

file.close