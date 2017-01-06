def shuffle unsorted_array
  #len = unsorted_array.length
  sorted_array = []
  while unsorted_array.length > 0
    idx = rand(unsorted_array.length)
    sorted_array.push unsorted_array[idx]
    unsorted_array.delete_at(idx)
  end
return sorted_array

end

result = shuffle ['apple','cat','banana','man','man']
puts result
