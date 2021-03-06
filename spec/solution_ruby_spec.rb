require "./src/solution_ruby.rb"

describe Solution do
	solution = Solution.new

	describe "reverse" do

		it "gives a string reverse" do 
			expect(solution.reverse("hello")).to eq "olleh"
		end

		it "gives a string reverse" do 
			expect(solution.reverse("this is great")).to eq "taerg si siht"
		end
	end

	describe "factorial" do 

		it "gives an integer 'n' and should return n*(n-1)*(n-2)*...*2*1" do 
			expect(solution.factorial(2)).to eq 2
		end

		it "gives an integer 'n' and should return n*(n-1)*(n-2)*...*2*1" do 
			expect(solution.factorial(8)).to eq 40320
		end

		it "As a special case, factorial(0) == 1" do 
			expect(solution.factorial(0)).to eq 1
		end
	end

	describe "longest word" do 

		it "takes a string and returns the longest word in the string" do 
			expect(solution.longest_word("hello all")).to eq "hello"
		end 

		it "takes a string and returns the longest word in the string" do 
			expect(solution.longest_word("this is the best solution ever")).to eq "solution"
		end 

		it "takes a string and returns the longest word in the string" do 
			expect(solution.longest_word("one")).to eq "one"
		end 
	end

	describe "sum nums" do 

		it "takes in an integer `num` and returns the sum of all integers between zero and num" do 
			expect(solution.sum_nums(5)).to eq 15
		end

		it "takes in an integer `num` and returns the sum of all integers between zero and num" do 
			expect(solution.sum_nums(20)).to eq 210
		end
	end

	describe "time convercion" do 

		it "thakes a number of minutes, and returns a string that formats the number into `hours:minutes`." do 
			expect(solution.time_conversion(15)).to eq "0:15"
		end

		it "thakes a number of minutes, and returns a string that formats the number into `hours:minutes`." do 
			expect(solution.time_conversion(150)).to eq "2:30"
		end

		it "thakes a number of minutes, and returns a string that formats the number into `hours:minutes`." do 
			expect(solution.time_conversion(360)).to eq "6:00"
		end
	end

	describe "count vowels" do 

		it "takes a string and returns the number of vowels in the string" do 
			expect(solution.count_vowels("hello world")).to eq 3
		end

		it "takes a string and returns the number of vowels in the string" do 
			expect(solution.count_vowels("This is my new I")).to eq 4
		end
	end

	describe "Palindrome" do 

		it "takes a string and returns true if it is a palindrome" do 
			expect(solution.palindrome?("abba")).to eq true
		end

		it "takes a string and returns false if it isn't a palindrome" do 
			expect(solution.palindrome?("there")).to eq false
		end
	end

	describe "nearby" do 

		it "takes a string in and returns true if the letter 'z' appears within three letters **after** an 'a' " do 
			expect(solution.nearby_az("baz")).to eq true
		end

		it "takes a string in and returns true if the letter 'z' appears within three letters **after** an 'a' " do 
			expect(solution.nearby_az("babz")).to eq true
		end

			it "takes a string in and returns true if the letter 'z' appears within three letters **after** an 'a' " do 
			expect(solution.nearby_az("babbz")).to eq true
		end

			it "takes a string in and returns false if the letter 'z' does not appear within three letters **after** an 'a' " do 
			expect(solution.nearby_az("bbba")).to eq false
		end

			it "takes a string in and returns false if the letter 'z' does not appear within three letters **after** an 'a' " do 
			expect(solution.nearby_az("z")).to eq false
		end
	end

	describe "two sum" do 

		it "takes an array of numbers. If a pair of numbers in the array sums to zero, return the positions of those two numbers." do 
			expect(solution.two_sum([1, 3, 5, -3])).to eq [1, 3]
		end

		it "takes an array of numbers. If a pair of numbers in the array sums to zero, return the positions of those two numbers." do 
			expect(solution.two_sum([1, 3, 5])).to eq nil
		end
	end

	describe "power of two" do 

		it "takes in a number and returns true if it is a power of 2" do 
			expect(solution.is_power_of_two?(1)).to eq true
		end

		it "takes in a number and returns true if it is a power of 2" do 
			expect(solution.is_power_of_two?(64)).to eq true
		end

		it "takes in a number and returns false if it isn't a power of 2" do 
			expect(solution.is_power_of_two?(78)).to eq false
		end

		it "takes in a number and returns false if it isn't a power of 2" do 
			expect(solution.is_power_of_two?(0)).to eq false
		end
	end

	describe "third greates number" do 

		it "return the third greatest number in the array" do 
			expect(solution.third_greatest([5, 3, 7])).to eq 3
		end

		it "return the third greatest number in the array" do 
			expect(solution.third_greatest([5, 3, 7, 12, 45, 89, 89, 76])).to eq 45
		end
	end

	describe "most common letter" do 

		it "return the most common letter in the array, and a count of how many times it appears." do 
			expect(solution.most_common_letter("abca")).to eq ["a", 2]
		end

		it "return the most common letter in the array, and a count of how many times it appears." do 
			expect(solution.most_common_letter("abbab")).to eq ["a", 2]
		end
	end

	describe "dasherize number" do 

		it "takes in a number and returns a string, placing a single dash before and after each odd digit. There is one
				exception: don't start or end the string with a dash." do 
			expect(solution.dasherize_number(203)).to eq "20-3"
		end

		it "takes in a number and returns a string, placing a single dash before and after each odd digit. There is one
				exception: don't start or end the string with a dash." do 
			expect(solution.dasherize_number(303)).to eq "3-0-3"
		end
	end

	describe "capitalize first words" do 

		it "capitalizes the first letter of each word." do 
			expect(solution.capitalize_words("this is a sentence")).to eq "This Is A Sentence"
		end

		it "capitalizes the first letter of each word." do 
			expect(solution.capitalize_words("mike bloomfield")).to eq "Mike Bloomfield"
		end
	end

	describe "scramble string" do 

		it "produce a new string, which contains letters from the input
				 string in the order specified by the indices of the array of indices." do 
			expect(solution.scramble_string("abcd", [3, 1, 2, 0])).to eq "dbca"
		end

		it "produce a new string, which contains letters from the input
				 string in the order specified by the indices of the array of indices." do 
			expect(solution.scramble_string("markov", [5, 3, 1, 4, 2, 0])).to eq "vkaorm"
		end
	end

	describe "is prime" do 

		it "return true if its a prime" do 
			expect(solution.is_prime?(2)).to eq true
		end

		it "return true if its a prime" do 
			expect(solution.is_prime?(3)).to eq true
		end

		it "return false if its a prime" do 
			expect(solution.is_prime?(4)).to eq false
		end

		it "return false if its a prime" do 
			expect(solution.is_prime?(9)).to eq false
		end
	end

	describe "nth prime" do 

		it "returns the `n`th prime number" do 
			expect(solution.nth_prime(1)).to eq 2
		end

		it "returns the `n`th prime number" do 
			expect(solution.nth_prime(5)).to eq 11
		end
	end


	describe "palindrome" do 

		it "Find the longest such string of letters that is a palindrome" do 
			expect(solution.longest_palindrome("abcbd")).to eq "bcb"
		end

		it "Find the longest such string of letters that is a palindrome" do 
			expect(solution.longest_palindrome("abba")).to eq "abba"
		end

		it "Find the longest such string of letters that is a palindrome" do 
			expect(solution.longest_palindrome("abcbdeffe")).to eq "effe"
		end
	end

	describe "greates common factor" do 

		it "Return the greatest integer that evenly divides both numbers" do 
			expect(solution.greatest_common_factor(3, 9)).to eq 3
		end

		it "Return the greatest integer that evenly divides both numbers" do 
			expect(solution.greatest_common_factor(16, 24)).to eq 8
		end

		it "Return the greatest integer that evenly divides both numbers" do 
			expect(solution.greatest_common_factor(3, 5)).to eq 1
		end
	end


	describe "caesar cipher" do 

		it "takes a string and a number. the number is the next letter in order from alphabet
				after z starts with a again" do 
			expect(solution.caesar_cipher(3, "abc")).to eq "def"
		end

		it "takes a string and a number. the number is the next letter in order from alphabet
				after z starts with a again" do 
			expect(solution.caesar_cipher(5, "abc")).to eq "fgh"
		end

		it "takes a string and a number. the number is the next letter in order from alphabet
				after z starts with a again" do 
			expect(solution.caesar_cipher(2, "aabz")).to eq "ccdb"
		end
	end


	describe "number repeats" do 

		it "returns the number of letters that appear more than once in the string" do 
			expect(solution.num_repeats("abdbc")).to eq 1
		end

		it "returns the number of letters that appear more than once in the string" do 
			expect(solution.num_repeats("aaa")).to eq 1
		end

		it "returns the number of letters that appear more than once in the string" do 
			expect(solution.num_repeats("abab")).to eq 2
		end

		it "returns the number of letters that appear more than once in the string" do 
			expect(solution.num_repeats("cadac")).to eq 2
		end

		it "returns the number of letters that appear more than once in the string" do 
			expect(solution.num_repeats("abcde")).to eq 0
		end
	end
end