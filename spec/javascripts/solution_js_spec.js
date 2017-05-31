describe("solutions", function() {
	var solution;

 it("gives a given string reverse", function() {
   	solution = new Solution();
   	expect(solution.reverse("hello")).toEqual("olleh");
 });
})