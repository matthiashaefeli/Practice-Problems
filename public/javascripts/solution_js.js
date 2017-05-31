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