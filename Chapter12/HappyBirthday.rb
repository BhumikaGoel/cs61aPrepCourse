puts "What was your birth year?"
year_s = gets.chomp
year = year_s.to_i
#puts byear
puts "What was your birth month in numbers?"
month_s = gets.chomp
month = month_s.to_i
#puts bmonth
puts "What was your birth date?"
date_s = gets.chomp
date = date_s.to_i
#puts bday

birthday = Time.local(year, month, date)
current = Time.new

age = (current - birthday)/(60*60*24*365)

puts "You are #{age.to_i} years old "

age.to_i.times do
  puts "SPANK!"
end
