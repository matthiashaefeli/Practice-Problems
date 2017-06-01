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
 it("takes a string and return the longest word", function(){
 	solution = new Solution();
  expect(solution.longestString("Hello we are here")).toEqual("Hello")
 });
 it("takes a string and return the longest word", function(){
  solution = new Solution();
  expect(solution.longestString("this is the best solution ever")).toEqual("solution")
 });
 it("takes a string and return the longest word", function(){
  solution = new Solution();
  expect(solution.longestString("this is the best solution ever")).toEqual("solution")
 });
 it("takes a string and return the longest word", function(){
  solution = new Solution();
  expect(solution.longestString("one")).toEqual("one")
 });
 it("takes a number and return the sum of all number betweeen zero and this number", function(){
 	solution = new Solution();
 	expect(solution.sumNumber(5)).toEqual(15)
 });
 it("takes a number and return the sum of all number betweeen zero and this number", function(){
 	solution = new Solution();
 	expect(solution.sumNumber(20)).toEqual(210)
 });
 it("takes a number of minutes and return a string that formats the number into hours and minutes", function(){
 	solution = new Solution();
 	expect(solution.minutesHours(15)).toEqual("0:15")
 });
 it("takes a number of minutes and return a string that formats the number into hours and minutes", function(){
 	solution = new Solution();
 	expect(solution.minutesHours(150)).toEqual("2:30")
 });
 it("takes a number of minutes and return a string that formats the number into hours and minutes", function(){
 	solution = new Solution();
 	expect(solution.minutesHours(360)).toEqual("6:00")
 });
 it("takes a string and returns true if it is a palindrome", function(){
  solution = new Solution();
  expect(solution.palindrome("abba")).toBe(true)
 });
 it("takes a string and returns false if it is not a palindrome", function(){
 	solution = new Solution();
 	expect(solution.palindrome("no")).toBe(false)
 });
 it("takes a string and returns true if the letter z appears within three letters after an a", function(){
 	solution = new Solution();
 	expect(solution.nearby("baz")).toBe(true)
 });
 it("takes a string and returns true if the letter z appears within three letters after an a", function(){
 	solution = new Solution();
 	expect(solution.nearby("babz")).toBe(true)
 });
 it("takes a string and returns true if the letter z appears within three letters after an a", function(){
 	solution = new Solution();
 	expect(solution.nearby("babbz")).toBe(true)
 });
 it("takes a string and returns true if the letter z appears within three letters after an a", function(){
 	solution = new Solution();
 	expect(solution.nearby("zabb")).toBe(false)
 });
 it("takes a string and returns the number of vowels in the string", function(){
 	solution = new Solution();
 	expect(solution.vowels("hello world")).toEqual(3)
 });
 it("takes a string and returns the number of vowels in the string", function(){
 	solution = new Solution();
 	expect(solution.vowels("This is my new I")).toEqual(4)
 });
 it("returns the position of a pair of numbers which sums 0", function(){
 	solution = new Solution();
 	expect(solution.pairs([1, 3, 5, -3])).toEqual([1, 3])
 });
  it("returns the position of a pair of numbers which sums 0", function(){
 	solution = new Solution();
 	expect(solution.pairs([1, 3, 5])).toEqual(undefined)
 });
 it("returns true if the given number is a power of two", function(){
  solution = new Solution();
  expect(solution.powerOfTwo(1)).toBe(true)
 });
 it("returns true if the given number is a power of two", function(){
  solution = new Solution();
  expect(solution.powerOfTwo(64)).toBe(true)
 });
 it("returns false if the given number is a power of two", function(){
  solution = new Solution();
  expect(solution.powerOfTwo(78)).toBe(false)
 });
 it("returns false if the given number is a power of two", function(){
  solution = new Solution();
  expect(solution.powerOfTwo(0)).toBe(false)
 });
  it("returns false if the given number is a power of two", function(){
  solution = new Solution();
  expect(solution.powerOfTwo(129)).toBe(false)
 });
})





