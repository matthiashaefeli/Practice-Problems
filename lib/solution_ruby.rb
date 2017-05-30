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
end