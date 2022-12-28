#Сделать генератор рожиц таким, чтобы он рисовал рожици в файл. Каждый раз в новый,
#название файла должно состоять из строчки "face", даты и текущего времени.

forehead_path = "data/foreheads.txt"
nose_path = "data/noses.txt"
mouths_path = "data/mouths.txt"
eyes_path = "data/eyes.txt"

if File.exist?(forehead_path)

  file = File.new(forehead_path, "r:UTF-8")

  forehead = file.readlines
  file.close
else
  abort "Foreheads not found!"
end

if File.exist?(nose_path)

  file1 = File.new(nose_path, "r:UTF-8")

  nose = file1.readlines
  file1.close
else
  abort "Noses not found!"
end

if File.exist?(mouths_path)

  file2 = File.new(mouths_path, "r:UTF-8")

  mouth = file2.readlines
  file2.close
else
  abort "Mouths not found!"
end

if File.exist?(eyes_path)
  
  file3 = File.new(eyes_path, "r:UTF-8")

  eyes = file3.readlines
  file3.close
else
  abort "Eyes not found!"
end

time = Time.new

filename = "face " + time.strftime("%Y.%m.%d %H-%M-%S") + ".txt"

rand_face = File.new("data/" + filename + ".txt", "a:UTF-8")

rand_face.puts(forehead.sample)
rand_face.puts(eyes.sample)
rand_face.puts(nose.sample)
rand_face.puts(mouth.sample)

rand_face.close
