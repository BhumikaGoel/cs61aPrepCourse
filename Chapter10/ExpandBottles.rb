def english_number number

  if number < 0
      return 'Please enter a number that isn\'t negative.'
  end

  if number == 0
     return 'zero'
  end

  num_string = ''

  ones_place = ['one', 'two', 'three','four','five','six','seven','eight','nine']
  tens_place = ['ten', 'twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']
  teenagers  = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen', 'eighteen', 'nineteen']
  further = [['hundred and', 2],['thousand and',3],['million and',6],]

  left = number

  while further.length != 0
    arr_popped = further.pop
    eng_name = arr_popped[0]
    num_zeroes = 10 ** arr_popped[1]

    write = left/num_zeroes
    left = left - write*num_zeroes

    if write > 0
      recurs = english_number write
      num_string = num_string + recurs + ' ' + eng_name
      if left > 0
        num_string = num_string + ' '
      end
    end
  end

  write = left/10
  left = left - write*10
  if write > 0
      if (write == 1) and (left > 0)
          num_string = num_string + teenagers[left-1]
          left = 0
      else
          num_string = num_string + tens_place[write-1]
      end

      if left > 0
          num_string = num_string + '-'
      end
   end

   write = left
   if write > 0
      num_string = num_string + ones_place[write-1]

  end

return num_string
end




###------------------###------------------###------------------###-------------------###---------------###-------------###



counter = 99
while counter>0
  if counter >2
        eng_num = english_number(counter)
        puts eng_num + " bottles of beer on the wall, " + eng_num + " bottles of beer."
        counter-=1
        eng_num = english_number(counter)
        puts "Take one down and pass it around, " + eng_num + " bottles of beer on the wall."
  end

  if counter == 2
        eng_num = english_number(counter)
        puts eng_num + " bottles of beer on the wall, " + eng_num + " bottles of beer."
        counter-=1
        eng_num = english_number(counter)
        puts "Take one down and pass it around, " + eng_num + " bottle of beer on the wall."
  end

  if counter == 1
      puts "One bottle of beer on the wall, One bottle of beer."
      puts "Take one down and pass it around, no more bottles of beer on the wall."
      counter-=1
  end

  if counter == 0
      puts "No more bottles of beer on the wall, no more bottles of beer."
      puts "Go to the store and buy some more, 99 bottles of beer on the wall."
  end
end
