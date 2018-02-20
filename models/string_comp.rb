

def is_equal(string1, string2)
  return "#{string1.capitalize} and #{string2.downcase} are equal!" if string1.downcase == string2.downcase
  return "#{string1.capitalize} and #{string2.downcase} are not equal!"
end


def is_palindrome(string)
  return "#{string.capitalize} is a palindrome!" if string.downcase == string.downcase.reverse
  return "#{string.capitalize} is not a palindrome!"
end

def is_isogram(string)
  string = string.downcase
  char_count_array = string.each_char.map { |char| string.count(char)}
  sum = char_count_array.reduce {|sum, num| sum + num }
  return "#{string.capitalize} is an isogram!" if sum == string.length
  return "#{string.capitalize} is not an isogram!"
end

def is_anagram(string1, string2)
  string1_sorted = string1.downcase.chars.sort()
  string2_sorted = string2.downcase.chars.sort()
  if string1_sorted == string2_sorted
   return "#{string1.capitalize} and #{string2.downcase} are anagrams of each other!"
  end
  return "#{string1.capitalize} and #{string2.downcase} are not anagrams of each other!"
end
