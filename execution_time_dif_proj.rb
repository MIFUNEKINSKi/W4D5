

def my_min(list)
  min = nil 
  list.each do |ele1|
    min = true
    list.each do |ele2|
      min = false if ele2 < ele1
    end 
    return ele1 if min 
  end 

end 

def my_min_n(list)
  min = list[0]
  list.each do |ele|
    if ele < min 
      min = ele
    end 
  end 
  min
end 

def contiguous_sum(list)
  i = 0 
  sums = []
  while i < list.length
    j = i + 1 
    while j < list.length 
      sums << list[i..j].sum
      j += 1 
    end 
    i += 1 
  end 
  sums.max
end 

def contiguous_n(list)
  max_sum = 0
  i = 0 
  j = 0 
  while i < list.length
     max_sum = list[i..j].sum if max_sum < list[i..j].sum
    if j == list.length
      i += 1 
    else 
      j += 1 
    end 
  end 
  max_sum
end 



#  p my_min_n(list)
 list = [2, 3, -6, 7, -6, 7]
  p contiguous_n(list)