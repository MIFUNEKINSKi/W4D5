def first_anagram?(str1, str2)
  anagrams = str1.chars.permutation.map(&:join)
  anagrams.include?(str2)
end

# p first_anagram?("yes","sey")

def second_anagram?(str1, str2)
  return false if str1.length != str2.length
  (0...str1.length).each do |i|
    index = str2.index(str1[i])
    return false  if index.nil? 
    str2[index] = ""
  end
  str2.length == 0
end

# p second_anagram?("yes","sey")

def third_anagram?(str1, str2)
  str1.chars.sort == str2.chars.sort
end

# p third_anagram?("yes","sy")

#bonus
def fourth_anagram?(str1, str2)
  hash = Hash.new(0)
  str1.each_char {|char| hash[char] += 1}
  str2.each_char {|char| hash[char] -= 1}
  hash.values.uniq.length == 1 && hash.values.uniq[0] == 0
end
p fourth_anagram?("yes","sey")