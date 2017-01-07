def shuffle array
  maincode array, []
end

def maincode array, shuffled_array
  if array.length == 0
    return shuffled_array
  end

  idx = rand(array.length)
  shuffled_array.push array[idx]
  array.delete_at(idx)

  maincode array, shuffled_array
end

result = shuffle ['apple','cat','banana','man','man', 'ruby','lion']
puts result
