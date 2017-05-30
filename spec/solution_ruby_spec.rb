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



end

