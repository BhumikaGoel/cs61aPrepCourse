def dictsort unsort_array
  maincode unsort_array, []
end

def maincode unsort_array, sort_array
  if unsort_array.length == 0
    return sort_array
  end

    #temp = unsort_array[unsort_array.length-1]
    #unsort_array.delete(temp)
    temp = unsort_array.pop
    #all but last of the unsorted array needed for recursive case
    temparray = []

    unsort_array.each do |entry|
      if temp > entry
        temparray.push temp
        temp = entry
      else
        temparray.push entry
      end
    end
  sort_array.push temp
  maincode temparray, sort_array

end

result = dictsort ['apple','cat','banana','man','man']
puts result
