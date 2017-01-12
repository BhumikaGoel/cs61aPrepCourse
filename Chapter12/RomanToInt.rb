def romantoint roman

  romankey = {}
  romankey['i'] = 1
  romankey['v'] = 5
  romankey['x'] = 10
  romankey['l'] = 50
  romankey['c'] = 100
  romankey['d'] = 500
  romankey['i'] = 1000

  answer = 0
  left = 0
  i = roman.length - 1
  while i >= 0
      j = roman[i].downcase
      num = romankey[j]
      i-=1
      if num == nil
        puts "Please enter a valid roman"
        break
      end

      if num < left
        num = 0 - num
      else
        left = num
      end

      answer+=num

  end

  if answer!=0
    return answer
  end
end

result = romantoint('CCH')
puts result
