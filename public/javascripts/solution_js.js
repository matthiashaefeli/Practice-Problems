var Solution = function() {

}

Solution.prototype.reverse = function(string) {
	result = []
 	for (var i = 0; i < string.length; i++ )
 	result.unshift(string[i]);  
 	return result.join("");
};

Solution.prototype.factorial = function(number) {
	if (number == 0){
		return 1
	}else {
		return number * this.factorial(number -1)
	};
};

Solution.prototype.longestString = function(string) {
	var stringArray = string.split(" ")
	var result = ""
	stringArray.forEach(function(word){
		if (result.length < word.length) {
			result = word
		};
	});
	return result
};

Solution.prototype.sumNumber = function(number) {
	var result = number
	for (var i = 0; i < number; i++){
		result += i
	};
	return result
};

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
};

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
};

Solution.prototype.nearby = function(string){
	var index = string.indexOf("a")
	var newString = string.substr(index, 4)
	return newString.includes("z")
};

Solution.prototype.vowels = function(string){
	var vowels = ["a", "e", "i", "o", "u", "A", "E", "I", "O", "U"]
	var count = 0
	for (var i = 0; i < string.length; i++){
		if (vowels.includes(string[i])) {
			count += 1
		}
	}
	return count
};

Solution.prototype.pairs = function(numbers){
	for (var i = 0; i < numbers.length; i++){
		for (var itwo = 0; itwo < numbers.length; itwo ++){
			if (numbers[i] + numbers[itwo] == 0)
			return [i, itwo]
		}
	}
};

Solution.prototype.powerOfTwo = function(number){
	if (number < 1){
		return false
	}else if (number == 1){
		return true
	}else {
		var square = Math.sqrt(number)
		if (square%2 == 0) {
			return true
		}else {
			return false
		}
	}
};

Solution.prototype.thirdBiggest = function(numbers){
	var uniqueArray = []
	for (var i = 0; i < numbers.length; i++){
		if (!uniqueArray.includes(numbers[i])){
			uniqueArray.push(numbers[i])
		}
	}
	var sortedArray = uniqueArray.sort(function(a, b){ return a - b});
	return sortedArray.slice(-3)[0]
};

Solution.prototype.commonLetter = function(string){
	var letter = ""
	var lettertwo = ""
	var counter = 0
	for (var i = 0; i < string.length; i++){
		var count = 0
		for (var itwo = 0; itwo < string.length; itwo++){
			if (string[i] == string[itwo]){
				count += 1
				letter = string[i]
			}
		}
		if (counter < count){
			counter = count
			lettertwo = letter
		}
	}
	return [lettertwo, counter]
};

Solution.prototype.upcase = function(string){
	var newArray = []
	var newWord = ""
	var stringArray = string.split(" ")
	stringArray.forEach(function(word){
		newWord = word.charAt(0).toUpperCase() + word.slice(1)
		newArray.push(newWord)
	})
	return newArray.join(" ")
};

Solution.prototype.stringOrder = function(string, array){
	var newString = ""
	for (var i = 0; i < string.length; i++){
		newString += string[array[i]]
	}
	return newString
};

Solution.prototype.prime = function(number){
for(var i = 2; i < number; i++) {
        if(number % i === 0) {
            return false;
        }
    }
    return number > 1;
};

Solution.prototype.ntPrime = function(number){
	var primeArray = []
	for (var i = 2; primeArray.length < number; i++){
		if (this.prime(i) == true) {
			primeArray.push(i)
		}
	}
	return primeArray[number-1]
};

Solution.prototype.longestPalindrome = function(string){
	var new_string = ""
	var result = ""
	for (var i = 0; i < string.length+1; i++){
		for (var itwo = 0; itwo < string.length+1; itwo++){
			if (this.palindrome(string.slice(i, itwo))) {
				newString = string.slice(i, itwo)
				if (newString.length > result.length) {
					result = newString
				}
			}
		}
	}
	return result
};

Solution.prototype.greatestCommonFactor = function(number1, number2){
	var index = number1
	for (var i = index; index > 0; index--){
		if ((number2%index) == 0 && (number1%index) == 0){
			return index
		}
	}
};

Solution.prototype.nextLetter = function(number, string){
	var alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
	var newIndex = 0
	var newString = []
	string.split("").forEach(function(letter){
		newIndex = alphabet.indexOf(letter)+number
		if (newIndex > alphabet.length){
			newIndex = newIndex - alphabet.length
			newString.push(alphabet[newIndex])
		}else {
			newString.push(alphabet[newIndex])
		}
	})
	return newString.join("")
};

Solution.prototype.numRepeats = function(string){
	
};

















