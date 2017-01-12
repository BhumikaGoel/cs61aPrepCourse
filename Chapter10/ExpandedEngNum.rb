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
  further = [['hundred', 2],['thousand',3],['million',6],]

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

result = english_number(2345)
puts result
