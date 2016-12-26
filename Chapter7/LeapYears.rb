puts "Which is the starting year?"
start = gets.chomp.to_i
puts "Which is the ending year?"
final = gets.chomp.to_i

while start !=final
  if (start%100 == 0 && start%400 == 0) || (start%4 == 0 && start%100 !=0)
    puts start.to_s
  end
  start+=1

end
