var Solution = function() {

}

Solution.prototype.reverse = function(string) {
	result = []
 	for (var i = 0; i < string.length; i++ )
 	result.unshift(string[i]);  
 	return result.join("");
}

Solution.prototype.factorial = function(number) {
	if (number == 0){
		return 1
	}else {
		return number * this.factorial(number -1)
	}
}

Solution.prototype.longestString = function(string) {
	var stringArray = string.split(" ")
	var result = ""
	stringArray.forEach(function(word){
		if (result.length < word.length) {
			result = word
		}
	})
	return result
}

Solution.prototype.sumNumber = function(number) {
	var result = number
	for (var i = 0; i < number; i++){
		result += i
	}
	return result
}

Solution.prototype.minutesHours = function(number) {
	var hh = 0
	var mm = 0
	while (number > 0) {
		if (number >= 60) {
			hh += 1
			number = number -60
		}else {
			mm = number
			number = number - number
		}
	}
	if (mm < 10) {
		finalmm = "0" + String(mm)
	}else {
		finalmm = String(mm)
	}
	return String(hh) + ":" + finalmm
}

Solution.prototype.palindrome = function(string){
	var stringReverse = ""
	for (var i = string.length-1; i > -1; i--) {
		stringReverse += string[i]
	}
	if (string == stringReverse) {
		return true
	}else {
		return false
	}
}

Solution.prototype.nearby = function(string){
	var index = string.indexOf("a")
	var newString = string.substr(index, 4)
	return newString.includes("z")
}

Solution.prototype.vowels = function(string){
	var vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
	var count = 0
	for (var i = 0; i < string.length; i++){
		if (vowels.includes(string[i])) {
			count += 1
		}
	}
	return count
}

Solution.prototype.pairs = function(numbers){
	for (var i = 0; i < numbers.length; i++){
		for (var itwo = 0; itwo < numbers.length; itwo ++){
			if (numbers[i] + numbers[itwo] == 0)
			return [i, itwo]
		}
	}
}











