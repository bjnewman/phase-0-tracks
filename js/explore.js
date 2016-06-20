//define function reverse that takes a string as parameter
//create a blank string variable to store the output
//for each character in the string add the character to the left side of the output variable
//stop at the end of the input word and returns the output variable
var reversedString = ""

function reverse(userString) {
  for (i = 0; i < userString.length ; i++) {
    reversedString = userString[i] + reversedString;
  }
  return console.log(reversedString)
}

reverse("hello")