puts "Please enter one word per line and press enter for a new line."
puts "When you are done, please press enter on the new line."
wordlist = []

while true
  newword = gets.chomp
  if newword == ''
    break
  else
    wordlist.push newword
  end
end

puts wordlist.sort
