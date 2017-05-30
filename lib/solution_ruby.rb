class Solution

	def reverse(string)
	  array = []
	  string.split('').each do |letter|
	    array.unshift(letter)
	  end
	  return array.join('')
	end





	
end