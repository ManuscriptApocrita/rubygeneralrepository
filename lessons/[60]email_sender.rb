#Сделать так, чтобы в программе демонстрационного урока тема письма также вводилась
#пользователем из консоли при отправке.

require "pony"
require "io/console"

own_mail = "rubyanryfort@gmail.com"

puts "Please, input your mail password #{own_mail}. For send letter."
password = STDIN.noecho(&:gets).chomp

puts "Who will receive the letter? Enter address..."
send_to = STDIN.gets.chomp
######
puts "Theme of letter?"
subject = STDIN.gets.chomp
######
puts "What`s write in letter?"
body = STDIN.gets.chomp.encode("UTF-8")

Pony.mail(
  subject: subject,
  body: body,
  to: send_to,
  from: own_mail,
  via: :smtp,
  via_options: {
    address: 'smtp.gmail.com',
    port: '587',
    enable_starttls_auto: true,
    user_name: own_mail,
    password: password,
    authentication: :plain,
  })
puts "Letter send!"