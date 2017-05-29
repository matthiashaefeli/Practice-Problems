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
# Write a method that takes in a string. Your method should return the
# most common letter in the array, and a count of how many times it
# appears.
def most_common_letter(string)
  result = [0, 1]
  i = 0
  while i < string.length
    if result[1] < string.count(string[i])
      result[0] = string[i]
      result[1] = string.count(string[i])
      i += 1 
    else
      i += 1  
    end
   return result
  end
end
#-----------------------------------------------------
# 13
# Write a method that takes in a number and returns a string, placing
# a single dash before and after each odd digit. There is one
# exception: don't start or end the string with a dash.
#
# You may wish to use the `%` modulo operation; you can see if a number
# is even if it has zero remainder when divided by two.
def dasherize_number(num)
  string_number = num.to_s
  result_string = ""
  i = 0 
  while i < string_number.length 
    number = string_number[i].to_i 
    if i > 0 
      prev_number = string_number[i-1].to_i 
      if 
        prev_number%2 == 1 || number%2 == 1 
        result_string += "-"
      end 
    end 
    result_string += string_number[i]
    i += 1
  end 
  return result_string
end
#-----------------------------------------------------
# 14
# Write a method that takes in a string of lowercase letters and
# spaces, producing a new string that capitalizes the first letter of
# each word.
#
# You'll want to use the `split` and `join` methods. Also, the String
# method `upcase`, which converts a string to all upper case will be
# helpful.
def capitalize_words(string)
  string_array = string.split(' ')
  string_array.map! do |word|
    word.capitalize
  end 
  result = string_array.join(' ')
 return result 
end
#-----------------------------------------------------
# 15 
# Write a method that takes in a string and an array of indices in the
# string. Produce a new string, which contains letters from the input
# string in the order specified by the indices of the array of indices.
def scramble_string(string, positions)
  string_array = []
  positions.each do |number|
    string_array << string[number]
  end 
  return string_array.join('')
end
#-----------------------------------------------------
# 16 
# Write a method that takes in an integer (greater than one) and
# returns true if it is prime; otherwise return false.
#
# You may want to use the `%` modulo operation. `5 % 2` returns the
# remainder when dividing 5 by 2; therefore, `5 % 2 == 1`. In the case
# of `6 % 2`, since 2 evenly divides 6 with no remainder, `6 % 2 == 0`.
# More generally, if `m` and `n` are integers, `m % n == 0` if and only
# if `n` divides `m` evenly.
#
# You would not be expected to already know about modulo for the
# challenge.
require 'prime'
def is_prime?(number)
number.prime?
end
#-----------------------------------------------------
# 17
# Write a method that returns the `n`th prime number. Recall that only
# numbers greater than 1 can be prime.
def is_prime?(number)
  if number <= 1
    # only numbers > 1 can be prime.
    return false
  end

  idx = 2
  while idx < number
    if (number % idx) == 0
      return false
    end

    idx += 1
  end

  return true
end

def nth_prime(n)
  prime_array = []
  i = 1
  while prime_array.length < n 
    if is_prime?(i)
      prime_array << i
      i += 1
    else 
      i += 1
    end 
  end
   return prime_array[-1]
end
#-----------------------------------------------------
# 18 
# Write a method that takes in a string of lowercase letters (no
# uppercase letters, no repeats). Consider the *substrings* of the
# string: consecutive sequences of letters contained inside the string.
# Find the longest such string of letters that is a palindrome.
#
# Note that the entire string may itself be a palindrome.
#
# You may want to use Array's `slice(start_index, length)` method,
# which returns a substring of length `length` starting at index
# `start_index`:
# this solution is not working please check again !!!!!!!!!!!!!!!!!!!!!!!!
def longest_palindrome(string)
  index = 0 
  index2 = -1
  result = ""
  while index < string.length 
      if string[index..index2] == string[index..index2].reverse
      if result.length < string[index..index2].length
        result = string[index..index2]
      index += 1
      else 
        if string[index+1] == string[index2]
          p 'hello'
          index2 = -1
          index += 1 
        else
          p string[index..index2]
        index2 -= 1 
        end 
      end
    end
end
#-----------------------------------------------------
# 19
# Write a method that takes in two numbers. Return the greatest
# integer that evenly divides both numbers. You may wish to use the
# `%` modulo operation.
def greatest_common_factor(number1, number2)
  index = number1
  while index > 0  
    if (number2%index == 0) && (number1%index == 0)
      return index
    else 
      index -= 1 
    end 
  end 
end
#-----------------------------------------------------
# 20
# Write a method that takes in an integer `offset` and a string.
# Produce a new string, where each letter is shifted by `offset`. You
# may assume that the string contains only lowercase letters and
# spaces.
#
# When shifting "z" by three letters, wrap around to the front of the
# alphabet to produce the letter "c".
#
# You'll want to use String's `ord` method and Integer's `chr` method.
# `ord` converts a letter to an ASCII number code. `chr` converts an
# ASCII number code to a letter.
#
# You may look at the ASCII printable characters chart:
#
#     http://en.wikipedia.org/wiki/ASCII#ASCII_printable_characters
#
# Notice that the letter 'a' has code 97, 'b' has code 98, etc., up to
# 'z' having code 122.
#
# You may also want to use the `%` modulo operation to handle wrapping
# of "z" to the front of the alphabet.
#
# Difficulty: hard. Because this problem relies on outside
# information, we would not give it to you on the timed challenge. :-)


























