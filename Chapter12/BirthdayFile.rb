birthdays = {}
File.read('birthdates.txt').each_line do |line|
    line = line.chomp
    i  = 0
    while (line[i] != ',' )
      if (i < line.length)
        i+=1
      end
    end

    name = line[0,i]
    birthdate = line[-15 .. (-1)]

    birthdays[name] = birthdate
    #puts "#{name} =   #{birthdays[name]}"
end

#puts birthdays

puts "Please enter name"
ans_name = gets.chomp

if birthdays[ans_name] == nil
  puts "Record does not exist"
else
  puts "#{ans_name}'s birthdate is #{birthdays[ans_name]}'"
end
