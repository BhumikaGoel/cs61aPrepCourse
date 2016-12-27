counter = 99
while counter>0
  if counter != 1
      puts counter.to_s + " bottles of beer on the wall, " + counter.to_s + " bottles of beer."
      counter-=1
      puts "Take one down and pass it around, " + counter.to_s + " bottles of beer on the wall."
  else
      puts "1 bottle of beer on the wall, 1 bottle of beer."
      puts "Take one down and pass it around, no more bottles of beer on the wall."
      counter-=1
  end
end

if counter == 0
  puts "No more bottles of beer on the wall, no more bottles of beer."
  puts "Go to the store and buy some more, 99 bottles of beer on the wall."
end
