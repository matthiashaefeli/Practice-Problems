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

end