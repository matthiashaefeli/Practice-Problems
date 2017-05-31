describe("solutions", function() {
	var solution;

 it("gives a given string reverse", function() {
   	solution = new Solution();
   	expect(solution.reverse("hello")).toEqual("olleh");
 });
  it("gives a given string reverse", function() {
   	solution = new Solution();
   	expect(solution.reverse("This is my first test")).toEqual("tset tsrif ym si sihT");
 });
  it("takes a integer and return n* n2* n3 etc", function(){
   	solution = new Solution();
   	expect(solution.factorial(2)).toEqual(2)
 });
  it("takes a integer and return n* n2* n3 etc", function(){
   	solution = new Solution();
   	expect(solution.factorial(8)).toEqual(40320)
 });
  it("takes a integer and return n* n2* n3 etc", function(){
   	solution = new Solution();
   	expect(solution.factorial(0)).toEqual(1)
  });
})