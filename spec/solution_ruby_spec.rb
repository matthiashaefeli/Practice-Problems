require "solution_ruby"

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



end

