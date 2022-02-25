
def brutish_two_sum(array,target)
  (0...array.length-1).each do |i|
    (i+1...array.length).each do |j|
      return true if array[i] + array[j] == target
    end 
  end 
false
end 

arr = [0, 1, 5, 7]
# p brutish_two_sum(arr, 10)

