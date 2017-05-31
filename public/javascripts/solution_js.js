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













