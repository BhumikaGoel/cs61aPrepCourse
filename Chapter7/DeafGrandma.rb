while true
  answer = gets.chomp
    if answer == answer.upcase
          if answer == 'BYE'
              break
          else
              num = rand(1951)
              #if num >= 1930   ###############
                puts "NO, NOT SINCE " + num.to_s + "!"
          end

    else
      puts "HUH ?! SPEAK UP SONNY!"
    end
end
