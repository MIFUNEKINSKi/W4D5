
def brutish_two_sum(array,target)
  (0...array.length-1).each do |i|
    (i+1...array.length).each do |j|
      return true if array[i] + array[j] == target
    end 
  end 
false
end 


# p brutish_two_sum(arr, 10)

def okay_two_sum(array, target)
  sorted = array.sort
  left = 0
  right = sorted.length - 1 

  while left < right 
    sum = sorted[left] + sorted[right]
    if sum == target 
      return true 
    elsif sum < target 
      left += 1
    else
      right -= 1
    end
  end
  return false
end

# p okay_two_sum(arr, 10)

arr = [0, 1, 5, 7, 8, 5]
def two_sum?(array, target)
  hash = {}
  array.each_with_index do |ele,idx|
    difference = target - ele 
    if hash.has_key?(difference)
      return true 
    else
      hash[ele] = idx
    end
  end
  return false
end

p two_sum?(arr, 17)