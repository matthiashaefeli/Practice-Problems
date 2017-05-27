# Practice-Problems
#-----------------------------------------------------
# 1
# Write a method that will take a string as input, and return a new
# string with the same letters in reverse order.
#
# Don't use String's reverse method; that would be too simple.

def reverse(string)
  array = []
  string.split('').each do |letter|
    array.unshift(letter)
  end
  return array.join('')
end
#-----------------------------------------------------
# 2
# Write a method that takes an integer `n` in; it should return
# n*(n-1)*(n-2)*...*2*1. Assume n >= 0.
#
# As a special case, `factorial(0) == 1`.

def factorial(n)
  result = 1
  while n > 0
    result = result * n
    n -= 1
  end
  return result
end
#-----------------------------------------------------
# 3
# Write a method that takes in a string. Return the longest word in
# the string. You may assume that the string contains only letters and
# spaces.
#
# You may use the String `split` method to aid you in your quest.
def longest_word(sentence)
  result = sentence.split(' ').sort_by {|word| word.length}
  result[-1]
end
#-----------------------------------------------------
4
