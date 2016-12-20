#full name greeting
puts "Hey! What is your first name?"
first = gets.chomp
puts "Whats your middle name?"
middle = gets.chomp
puts "And what's your last name?"
last = gets.chomp
puts "Hi " + first + " " + middle + " " + last + "! Nice to meet you"

#Bigger, better favorite number
puts "Hey! What is your favourite number?"
num_s = gets.chomp
num_i = num_s.to_i
num_add = num_i + 1
puts "But don't you think that " + num_add.to_s + "is a better bigger number?"
