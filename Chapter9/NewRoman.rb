def roman num
  arr = num.to_s.split('')
  answer = 'M'*arr[0].to_i

  if arr[1].to_i == 9
    answer += 'CM'
  elsif arr[1].to_i == 4
    answer += 'CD'
  else
    answer += 'D' * ((num%1000)/500)
    answer += 'C' * ((num%500)/100)
  end

  if arr[2].to_i == 9
    answer += 'XC'
  elsif arr[2].to_i == 4
    answer += 'XL'
  else
    answer += 'L' * ((num%100)/50)
    answer += 'X' * ((num%50)/10)
  end

  if arr[3].to_i == 9
    answer += 'IX'
  elsif arr[3].to_i == 4
    answer += 'IV'
  else
    answer += 'V' * ((num%10)/5)
    answer += 'I' * ((num%5)/1)
  end

return answer

end

result = roman 1999
puts result
