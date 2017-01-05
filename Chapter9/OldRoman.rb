def roman num
  answer=''
  if num <6
    answer += 'V' * ((num%10)/5)
    answer += 'I' * ((num%5)/1)
    return answer
  elsif num<11
    answer += 'X' * ((num%50)/10)
    answer += 'V' * ((num%10)/5)
    answer += 'I' * ((num%5)/1)
    return answer
  elsif num<51
    answer += 'L' * ((num%100)/50)
    answer += 'X' * ((num%50)/10)
    answer += 'V' * ((num%10)/5)
    answer += 'I' * ((num%5)/1)
    return answer
  elsif num<101
    answer += 'C' * ((num%500)/100)
    answer += 'L' * ((num%100)/50)
    answer += 'X' * ((num%50)/10)
    answer += 'V' * ((num%10)/5)
    answer += 'I' * ((num%5)/1)
    return answer
  elsif num<501
    answer += 'D' * ((num%1000)/500)
    answer += 'C' * ((num%500)/100)
    answer += 'L' * ((num%100)/50)
    answer += 'X' * ((num%50)/10)
    answer += 'V' * ((num%10)/5)
    answer += 'I' * ((num%5)/1)
    return answer
  else
    answer += 'M' * (num/1000)
    answer += 'D' * ((num%1000)/500)
    answer += 'C' * ((num%500)/100)
    answer += 'L' * ((num%100)/50)
    answer += 'X' * ((num%50)/10)
    answer += 'V' * ((num%10)/5)
    answer += 'I' * ((num%5)/1)
    return answer
  end
end
result = roman 2017
puts result
