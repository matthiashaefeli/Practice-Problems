# 1
def reverse(string)
  array = []
  string.split('').each do |letter|
    array.unshift(letter)
  end
  return array.join('')
end
#-----------------------------------------------------
# 2
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
def longest_word(sentence)
  result = sentence.split(' ').sort_by {|word| word.length}
  result[-1]
end
#-----------------------------------------------------
# 4
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
def time_conversion(minutes)
    t = Time.at(minutes*60)
   r = t.strftime("%H:%M")
   r.slice!(0)
  p r
end
#-----------------------------------------------------
# 6
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
def palindrome?(string)
  if string == string.reverse
    return true
  else 
    false
  end
end
#-----------------------------------------------------
# 8
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
def third_greatest(nums)
  result = nums.sort
  return result[-3]
end
#-----------------------------------------------------
# 12
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
def scramble_string(string, positions)
  string_array = []
  positions.each do |number|
    string_array << string[number]
  end 
  return string_array.join('')
end
#-----------------------------------------------------
# 16
require 'prime'
def is_prime?(number)
number.prime?
end
#-----------------------------------------------------
# 17
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

#-----------------------------------------------------
# 21

#-----------------------------------------------------
