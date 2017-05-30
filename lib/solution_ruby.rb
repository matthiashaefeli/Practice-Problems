require "pry"

class Solution

	def reverse(string)
	  array = []
	  string.split('').each do |letter|
	    array.unshift(letter)
	  end
	  return array.join('')
	end

	def factorial(n)
	  result = 1
	  while n > 0
	    result = result * n
	    n -= 1
	  end
	  return result
	end

	def longest_word(sentence)
	  result = sentence.split(' ').sort_by {|word| word.length}
	  result[-1]
	end

	def sum_nums(num)
	  result = 0 
	  until num == 0 
	    result += num 
	    num-=1
	  end
	  return result
	end

	def time_conversion(minutes)
		# Time.at(minutes).utc.strftime("%M:%S")
		hh, mm = minutes.divmod(60)
		if mm < 10 
			m = "0" + mm.to_s
		else
			m = mm.to_s
		end
		return hh.to_s + ":" + m
	end

	def count_vowels(string)
	  result = 0
	  vowel = ['a','e','i','o','u','A', 'E', 'I', 'O', 'U']
	  string.split('').each do |letter|
	    if vowel.include?(letter)
	      result += 1 
	    end
	  end
	  return result
	end

	def palindrome?(string)
	  if string == string.reverse
	    return true
	  else 
	    false
	  end
	end

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

	def third_greatest(nums)
	  result = nums.sort.uniq
	  return result[-3]
	end

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

	def capitalize_words(string)
	  string_array = string.split(' ')
	  string_array.map! do |word|
	    word.capitalize
	  end 
	  result = string_array.join(' ')
	 return result 
	end

	def scramble_string(string, positions)
	  string_array = []
	  positions.each do |number|
	    string_array << string[number]
	  end 
	  return string_array.join('')
	end

	def is_prime?(number)
	  if number <= 1
	    return false
	  end

	  idx = 2
	  while idx < number
	    if number % idx == 0
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

	def longest_palindrome(string)
	  index = 0 
	  index2 = -1
	  result = ""
	  while index < string.length
	  	if palindrome?(string[index..index2])
	  		if result.length < string[index..index2].length
	  		result = string[index..index2]
	  		end
	  	end
	  	if string[index+1] == string[index2]
	      index2 = -1
	      index += 1 
	    else
	      index2 -= 1 
	    end 
	  end
	  return result
	end

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

	def caesar_cipher(number, string)
	end

	def num_repeats(string)
	end
end