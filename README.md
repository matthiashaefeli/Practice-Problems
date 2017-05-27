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
# 4
# Write a method that takes in an integer `num` and returns the sum of
# all integers between zero and num, up to and including `num`.
def sum_nums(num)
  result = 0 
  until num == 0 
    result += num 
    num-=1
  end
  return result
end
#-----------------------------------------------------
# 5
# Write a method that will take in a number of minutes, and returns a
# string that formats the number into `hours:minutes`.
def time_conversion(minutes)
    t = Time.at(minutes*60)
   r = t.strftime("%H:%M")
   r.slice!(0)
  p r
end
#-----------------------------------------------------
# 6
# Write a method that takes a string and returns the number of vowels
# in the string. You may assume that all the letters are lower cased.
# You can treat "y" as a consonant.
def count_vowels(string)
  result = 0
  vowel = ['a','e','i','o','u']
  string.split('').each do |letter|
    if vowel.include?(letter)
      result += 1 
    end
  end
  return result
end
#-----------------------------------------------------
# 7
# Write a method that takes a string and returns true if it is a
# palindrome. A palindrome is a string that is the same whether written
# backward or forward. Assume that there are no spaces; only lowercase
# letters will be given.
def palindrome?(string)
  if string == string.reverse
    return true
  else 
    false
  end
end
#-----------------------------------------------------
# 8
# Write a method that takes a string in and returns true if the letter
# "z" appears within three letters **after** an "a". You may assume
# that the string contains only lowercase letters.
def nearby_az(string)
  array = string.split('')
  index = 0 
  while index < array.length 
    if array[index]  == 'a'
      if array[index+1] == 'z' || array[index+2] == 'z' || array[index+3] == 'z'
        return true
      else
         index += 1
      end
    else 
       index += 1
    end
  end 
  return false
end
#-----------------------------------------------------
# 9
# Write a method that takes an array of numbers. If a pair of numbers
# in the array sums to zero, return the positions of those two numbers.
# If no pair of numbers sums to zero, return `nil`.
def two_sum(nums)
  i = 0
  while i < nums.length
    i2 = i + 1
    while i2 < nums.length
      if nums[i] + nums[i2] == 0
        return [i, i2]
      end
      i2 += 1
    end
    i += 1
  end
  return nil
end
#-----------------------------------------------------
# 10 
# Write a method that takes in a number and returns true if it is a
# power of 2. Otherwise, return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
def is_power_of_two?(num)
  if num < 1
    return false
  end
  while true
    if num == 1
      return true
    elsif num % 2 == 0
      num = num / 2
    else
      return false
    end
  end
end
#-----------------------------------------------------
# 11
# Write a method that takes an array of numbers in. Your method should
# return the third greatest number in the array. You may assume that
# the array has at least three numbers in it.
def third_greatest(nums)
  result = nums.sort
  return result[-3]
end
#-----------------------------------------------------
# 12








































