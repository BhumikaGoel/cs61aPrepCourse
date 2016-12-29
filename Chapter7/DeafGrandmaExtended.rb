counter = 0
while true
  answer = gets.chomp
    if answer == answer.upcase
          if answer == 'BYE'
              counter+=1
              if counter == 3
                break
              end
          else
              counter = 0
              num = rand(21) + 1930
              puts "NO, NOT SINCE " + num.to_s + "!"
          end

    else
      puts "HUH ?! SPEAK UP SONNY!"
    end
end
